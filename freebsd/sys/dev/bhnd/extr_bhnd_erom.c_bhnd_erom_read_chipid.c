
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int chip_caps; void* enum_addr; void* chip_type; void* ncores; void* chip_rev; void* chip_pkg; void* chip_id; } ;
typedef int bhnd_size_t ;
typedef void* bhnd_addr_t ;


 int BHND_CAP_BP64 ;
 int BHND_CAP_PMU ;
 scalar_t__ BHND_CHIPTYPE_HAS_EROM (void*) ;
 int CHIPC_CAPABILITIES ;
 int CHIPC_CAP_BKPLN64 ;
 int CHIPC_CAP_PMU ;
 int CHIPC_EROMPTR ;
 void* CHIPC_GET_BITS (int,int ) ;
 int CHIPC_ID ;
 int CHIPC_ID_BUS ;
 int CHIPC_ID_CHIP ;
 int CHIPC_ID_NUMCORE ;
 int CHIPC_ID_PKG ;
 int CHIPC_ID_REV ;
 void* bhnd_erom_io_read (struct bhnd_erom_io*,int ,int) ;
 int bhnd_erom_io_tell (struct bhnd_erom_io*,void**,int *) ;

int
bhnd_erom_read_chipid(struct bhnd_erom_io *eio, struct bhnd_chipid *cid)
{
 bhnd_addr_t cc_addr;
 bhnd_size_t cc_size;
 uint32_t idreg, cc_caps;
 int error;


 if ((error = bhnd_erom_io_tell(eio, &cc_addr, &cc_size)))
  return (error);


 idreg = bhnd_erom_io_read(eio, CHIPC_ID, 4);


 cid->chip_id = CHIPC_GET_BITS(idreg, CHIPC_ID_CHIP);
 cid->chip_pkg = CHIPC_GET_BITS(idreg, CHIPC_ID_PKG);
 cid->chip_rev = CHIPC_GET_BITS(idreg, CHIPC_ID_REV);
 cid->chip_type = CHIPC_GET_BITS(idreg, CHIPC_ID_BUS);
 cid->ncores = CHIPC_GET_BITS(idreg, CHIPC_ID_NUMCORE);


 if (BHND_CHIPTYPE_HAS_EROM(cid->chip_type)) {
  cid->enum_addr = bhnd_erom_io_read(eio, CHIPC_EROMPTR, 4);
 } else {
  cid->enum_addr = cc_addr;
 }


 cc_caps = bhnd_erom_io_read(eio, CHIPC_CAPABILITIES, 4);
 cid->chip_caps = 0x0;

 if (cc_caps & CHIPC_CAP_BKPLN64)
  cid->chip_caps |= BHND_CAP_BP64;

 if (cc_caps & CHIPC_CAP_PMU)
  cid->chip_caps |= BHND_CAP_PMU;

 return (0);
}
