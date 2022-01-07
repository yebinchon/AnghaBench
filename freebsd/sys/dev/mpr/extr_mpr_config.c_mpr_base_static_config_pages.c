
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mpr_softc {int custom_nvme_tm_handling; int nvme_abort_timeout; int iounit_pg8; int ioc_pg8; } ;
struct TYPE_3__ {int NVMeAbortTO; int AddlFlags2; } ;
typedef TYPE_1__ Mpi2ManufacturingPage11_t ;
typedef int Mpi2ConfigReply_t ;


 int MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK ;
 int le16toh (int ) ;
 scalar_t__ mpr_config_get_ioc_pg8 (struct mpr_softc*,int *,int *) ;
 scalar_t__ mpr_config_get_iounit_pg8 (struct mpr_softc*,int *,int *) ;
 int mpr_config_get_man_pg11 (struct mpr_softc*,int *,TYPE_1__*) ;

void
mpr_base_static_config_pages(struct mpr_softc *sc)
{
 Mpi2ConfigReply_t mpi_reply;
 Mpi2ManufacturingPage11_t man_pg11;
 int retry, rc;

 retry = 0;
 while (mpr_config_get_ioc_pg8(sc, &mpi_reply, &sc->ioc_pg8)) {
  retry++;
  if (retry > 5) {


   break;
  }
 }
 retry = 0;
 while (mpr_config_get_iounit_pg8(sc, &mpi_reply, &sc->iounit_pg8)) {
  retry++;
  if (retry > 5) {


   break;
  }
 }
 retry = 0;
 while ((rc = mpr_config_get_man_pg11(sc, &mpi_reply, &man_pg11))) {
  retry++;
  if (retry > 5) {


   break;
  }
 }

 if (!rc) {
  sc->custom_nvme_tm_handling = (le16toh(man_pg11.AddlFlags2) &
      MPI2_MAN_PG11_ADDLFLAGS2_CUSTOM_TM_HANDLING_MASK);
  sc->nvme_abort_timeout = man_pg11.NVMeAbortTO;




  if (sc->nvme_abort_timeout < 6)
   sc->nvme_abort_timeout = 6;
  if (sc->nvme_abort_timeout > 60)
   sc->nvme_abort_timeout = 60;
 }
}
