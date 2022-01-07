
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct siba_erom {int io; } ;
struct siba_core_id {int dummy; } ;
struct siba_admatch {int am_base; int am_size; } ;
struct bhnd_core_match {int dummy; } ;
struct bhnd_core_info {int core_idx; int unit; } ;
typedef int bhnd_size_t ;
typedef int bhnd_port_type ;
typedef int bhnd_erom_t ;
typedef int bhnd_addr_t ;


 int BHND_ADDR_MAX ;
 int BHND_PORT_DEVICE ;
 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int SIBA_CFG_OFFSET (scalar_t__) ;
 int SIBA_CFG_SIZE ;
 char* bhnd_port_type_name (int ) ;
 int printf (char*,...) ;
 int siba_addrspace_index (struct siba_core_id*,int ,scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ siba_admatch_offset (scalar_t__) ;
 int siba_cfg_index (struct siba_core_id*,int ,scalar_t__,scalar_t__,scalar_t__*) ;
 int siba_eio_read_4 (int *,int ,scalar_t__) ;
 int siba_eio_read_core_id (int *,int ,int ,struct siba_core_id*) ;
 int siba_erom_lookup_core (int *,struct bhnd_core_match const*,struct bhnd_core_info*) ;
 int siba_is_port_valid (struct siba_core_id*,int ,scalar_t__) ;
 int siba_parse_admatch (int,struct siba_admatch*) ;
 scalar_t__ siba_port_region_count (struct siba_core_id*,int ,scalar_t__) ;

__attribute__((used)) static int
siba_erom_lookup_core_addr(bhnd_erom_t *erom, const struct bhnd_core_match *desc,
    bhnd_port_type type, u_int port, u_int region, struct bhnd_core_info *info,
    bhnd_addr_t *addr, bhnd_size_t *size)
{
 struct siba_erom *sc;
 struct bhnd_core_info core;
 struct siba_core_id sid;
 struct siba_admatch admatch;
 uint32_t am;
 u_int am_offset;
 u_int addrspace, cfg;

 int error;

 sc = (struct siba_erom *)erom;


 if ((error = siba_erom_lookup_core(erom, desc, &core)))
  return (error);


 error = siba_eio_read_core_id(&sc->io, core.core_idx, core.unit, &sid);
 if (error)
  return (error);


 if (!siba_is_port_valid(&sid, type, port))
  return (ENOENT);


 if (region >= siba_port_region_count(&sid, type, port))
  return (ENOENT);



 error = siba_cfg_index(&sid, type, port, region, &cfg);
 if (!error) {
  bhnd_addr_t region_addr;
  bhnd_addr_t region_size;
  bhnd_size_t cfg_offset, cfg_size;

  cfg_offset = SIBA_CFG_OFFSET(cfg);
  cfg_size = SIBA_CFG_SIZE;


  error = siba_erom_lookup_core_addr(erom, desc, BHND_PORT_DEVICE,
      0, 0, ((void*)0), &region_addr, &region_size);
  if (error)
   return (error);


  if (region_size < cfg_size) {
   printf("%s%u.%u offset %ju exceeds %s0.0 size %ju\n",
       bhnd_port_type_name(type), port, region, cfg_offset,
       bhnd_port_type_name(BHND_PORT_DEVICE), region_size);

   return (ENXIO);
  }

  if (BHND_ADDR_MAX - region_addr < cfg_offset) {
   printf("%s%u.%u offset %ju would overflow %s0.0 addr "
       "%ju\n", bhnd_port_type_name(type), port, region,
       cfg_offset, bhnd_port_type_name(BHND_PORT_DEVICE),
       region_addr);

   return (ENXIO);
  }

  if (info != ((void*)0))
   *info = core;

  *addr = region_addr + cfg_offset;
  *size = cfg_size;
  return (0);
 }
 error = siba_addrspace_index(&sid, type, port, region, &addrspace);
 if (error)
  return (error);


 am_offset = siba_admatch_offset(addrspace);
 if (am_offset == 0) {
  printf("addrspace %u is unsupported", addrspace);
  return (ENODEV);
 }


 am = siba_eio_read_4(&sc->io, core.core_idx, am_offset);

 if ((error = siba_parse_admatch(am, &admatch))) {
  printf("failed to decode address match register value 0x%x\n",
      am);
  return (error);
 }

 if (info != ((void*)0))
  *info = core;

 *addr = admatch.am_base;
 *size = admatch.am_size;

 return (0);
}
