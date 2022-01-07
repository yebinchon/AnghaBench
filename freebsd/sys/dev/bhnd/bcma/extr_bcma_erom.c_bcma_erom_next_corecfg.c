
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct bcma_mport {int mp_num; int mp_vid; } ;
struct bcma_erom_mport {int port_num; int port_vid; } ;
struct bcma_erom_core {scalar_t__ vendor; scalar_t__ device; scalar_t__ num_mport; scalar_t__ num_dport; scalar_t__ num_mwrap; scalar_t__ num_swrap; int rev; } ;
struct bcma_erom {int dummy; } ;
struct bcma_corecfg {scalar_t__ num_master_ports; scalar_t__ num_dev_ports; scalar_t__ num_bridge_ports; scalar_t__ num_wrapper_ports; int master_ports; } ;
typedef scalar_t__ bus_size_t ;


 scalar_t__ BCMA_EROM_ENTRY_IS (int ,int ) ;
 int BCMA_EROM_ENTRY_TYPE_CORE ;
 scalar_t__ BCMA_EROM_GET_ATTR (int ,int ) ;
 scalar_t__ BCMA_EROM_REGION_TYPE_BRIDGE ;
 scalar_t__ BCMA_EROM_REGION_TYPE_DEVICE ;
 scalar_t__ BCMA_EROM_REGION_TYPE_MWRAP ;
 scalar_t__ BCMA_EROM_REGION_TYPE_SWRAP ;
 scalar_t__ BCMA_PID_MAX ;
 scalar_t__ BHND_MFGID_BCM ;
 int ENOENT ;
 int ENOMEM ;
 int EROM_LOG (struct bcma_erom*,char*,scalar_t__,int ,int ,scalar_t__,int ,int) ;
 int KASSERT (int,char*) ;
 int M_BHND ;
 int M_NOWAIT ;
 int REGION ;
 int REGION_TYPE ;
 int STAILQ_INSERT_TAIL (int *,struct bcma_mport*,int ) ;
 struct bcma_corecfg* bcma_alloc_corecfg (scalar_t__,int,scalar_t__,scalar_t__,int ) ;
 int bcma_erom_corecfg_fill_port_regions (struct bcma_erom*,struct bcma_corecfg*,scalar_t__,scalar_t__) ;
 int bcma_erom_parse_core (struct bcma_erom*,struct bcma_erom_core*) ;
 int bcma_erom_parse_mport (struct bcma_erom*,struct bcma_erom_mport*) ;
 int bcma_erom_peek32 (struct bcma_erom*,int *) ;
 int bcma_erom_reset (struct bcma_erom*) ;
 int bcma_erom_seek_next (struct bcma_erom*,int ) ;
 int bcma_erom_skip_core (struct bcma_erom*) ;
 scalar_t__ bcma_erom_tell (struct bcma_erom*) ;
 int bcma_free_corecfg (struct bcma_corecfg*) ;
 int bhnd_find_core_name (scalar_t__,scalar_t__) ;
 int bhnd_vendor_name (scalar_t__) ;
 scalar_t__ bootverbose ;
 struct bcma_mport* malloc (int,int ,int ) ;
 int mp_link ;

int
bcma_erom_next_corecfg(struct bcma_erom *erom, struct bcma_corecfg **result)
{
 struct bcma_corecfg *cfg;
 struct bcma_erom_core core;
 uint8_t first_region_type;
 bus_size_t initial_offset;
 u_int core_index;
 int core_unit;
 int error;

 cfg = ((void*)0);
 initial_offset = bcma_erom_tell(erom);


 if ((error = bcma_erom_parse_core(erom, &core)))
  return (error);


 bcma_erom_reset(erom);
 core_unit = 0;
 core_index = 0;
 for (; bcma_erom_tell(erom) != initial_offset; core_index++) {
  struct bcma_erom_core prev_core;


  error = bcma_erom_seek_next(erom, BCMA_EROM_ENTRY_TYPE_CORE);
  if (error)
   return (error);

  if ((error = bcma_erom_parse_core(erom, &prev_core)))
   return (error);


  if (core.vendor == prev_core.vendor &&
      core.device == prev_core.device)
  {
   core_unit++;
  }


  error = bcma_erom_seek_next(erom, BCMA_EROM_ENTRY_TYPE_CORE);
  if (error)
   return (error);
 }


 if ((error = bcma_erom_skip_core(erom)))
  return (error);


 cfg = bcma_alloc_corecfg(core_index, core_unit, core.vendor,
     core.device, core.rev);
 if (cfg == ((void*)0))
  return (ENOMEM);



 KASSERT(core.num_mport <= BCMA_PID_MAX, ("unsupported mport count"));
 KASSERT(core.num_dport <= BCMA_PID_MAX, ("unsupported dport count"));
 KASSERT(core.num_mwrap + core.num_swrap <= BCMA_PID_MAX,
     ("unsupported wport count"));

 if (bootverbose) {
  EROM_LOG(erom,
      "core%u: %s %s (cid=%hx, rev=%hu, unit=%d)\n",
      core_index,
      bhnd_vendor_name(core.vendor),
      bhnd_find_core_name(core.vendor, core.device),
      core.device, core.rev, core_unit);
 }

 cfg->num_master_ports = core.num_mport;
 cfg->num_dev_ports = 0;
 cfg->num_bridge_ports = 0;
 cfg->num_wrapper_ports = core.num_mwrap + core.num_swrap;


 for (uint8_t i = 0; i < core.num_mport; i++) {
  struct bcma_mport *mport;
  struct bcma_erom_mport mpd;


  error = bcma_erom_parse_mport(erom, &mpd);
  if (error)
   goto failed;


  mport = malloc(sizeof(struct bcma_mport), M_BHND, M_NOWAIT);
  if (mport == ((void*)0)) {
   error = ENOMEM;
   goto failed;
  }

  mport->mp_vid = mpd.port_vid;
  mport->mp_num = mpd.port_num;


  STAILQ_INSERT_TAIL(&cfg->master_ports, mport, mp_link);
 }
 if (core.num_dport > 0) {
  uint32_t entry;

  if ((error = bcma_erom_peek32(erom, &entry)))
   goto failed;

  if (BCMA_EROM_ENTRY_IS(entry, REGION) &&
      BCMA_EROM_GET_ATTR(entry, REGION_TYPE) == BCMA_EROM_REGION_TYPE_BRIDGE)
  {
   first_region_type = BCMA_EROM_REGION_TYPE_BRIDGE;
   cfg->num_dev_ports = 0;
   cfg->num_bridge_ports = core.num_dport;
  } else {
   first_region_type = BCMA_EROM_REGION_TYPE_DEVICE;
   cfg->num_dev_ports = core.num_dport;
   cfg->num_bridge_ports = 0;
  }
 }


 for (uint8_t sp_num = 0; sp_num < core.num_dport; sp_num++) {
  error = bcma_erom_corecfg_fill_port_regions(erom, cfg, sp_num,
      first_region_type);

  if (error)
   goto failed;
 }


 for (uint8_t sp_num = 0; sp_num < core.num_mwrap; sp_num++) {
  error = bcma_erom_corecfg_fill_port_regions(erom, cfg, sp_num,
      BCMA_EROM_REGION_TYPE_MWRAP);

  if (error)
   goto failed;
 }



 for (uint8_t i = 0; i < core.num_swrap; i++) {
  uint8_t sp_num;
  sp_num = (core.num_mwrap > 0) ?
    core.num_mwrap :
    ((core.vendor == BHND_MFGID_BCM) ? 1 : 0) + i;
  error = bcma_erom_corecfg_fill_port_regions(erom, cfg, sp_num,
      BCMA_EROM_REGION_TYPE_SWRAP);

  if (error)
   goto failed;
 }
 if ((error = bcma_erom_seek_next(erom, BCMA_EROM_ENTRY_TYPE_CORE))) {
  if (error != ENOENT)
   goto failed;
 }

 *result = cfg;
 return (0);

failed:
 if (cfg != ((void*)0))
  bcma_free_corecfg(cfg);

 return error;
}
