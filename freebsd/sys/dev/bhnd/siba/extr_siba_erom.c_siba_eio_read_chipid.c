
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siba_erom_io {int eio; } ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int hwrev; } ;
struct siba_core_id {TYPE_1__ core_info; } ;
struct bhnd_chipid {int chip_id; int ncores; } ;
typedef int bus_addr_t ;





 scalar_t__ BHND_COREID_CC ;
 scalar_t__ BHND_MFGID_BCM ;
 scalar_t__ CHIPC_NCORES_MIN_HWREV (int ) ;
 int EINVAL ;
 int ENXIO ;
 int EROM_LOG (struct siba_erom_io*,char*,scalar_t__,scalar_t__) ;
 int bhnd_erom_read_chipid (int ,struct bhnd_chipid*) ;
 scalar_t__ bootverbose ;
 int siba_eio_read_core_id (struct siba_erom_io*,int ,int ,struct siba_core_id*) ;

__attribute__((used)) static int
siba_eio_read_chipid(struct siba_erom_io *io, bus_addr_t enum_addr,
    struct bhnd_chipid *cid)
{
 struct siba_core_id ccid;
 int error;


 if ((error = siba_eio_read_core_id(io, 0, 0, &ccid)))
  return (error);

 if (ccid.core_info.vendor != BHND_MFGID_BCM ||
     ccid.core_info.device != BHND_COREID_CC)
 {
  if (bootverbose) {
   EROM_LOG(io, "first core not chipcommon "
       "(vendor=%#hx, core=%#hx)\n", ccid.core_info.vendor,
       ccid.core_info.device);
  }
  return (ENXIO);
 }


 if ((error = bhnd_erom_read_chipid(io->eio, cid)))
  return (error);


 if (CHIPC_NCORES_MIN_HWREV(ccid.core_info.hwrev))
  return (0);

 switch (cid->chip_id) {
 case 130:
  cid->ncores = 6;
  break;
 case 129:
  cid->ncores = 9;
  break;
 case 128:
  cid->ncores = 7;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
