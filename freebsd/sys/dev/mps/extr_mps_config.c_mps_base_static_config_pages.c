
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int ioc_pg8; } ;
typedef int Mpi2ConfigReply_t ;


 scalar_t__ mps_config_get_ioc_pg8 (struct mps_softc*,int *,int *) ;

void
mps_base_static_config_pages(struct mps_softc *sc)
{
 Mpi2ConfigReply_t mpi_reply;
 int retry;

 retry = 0;
 while (mps_config_get_ioc_pg8(sc, &mpi_reply, &sc->ioc_pg8)) {
  retry++;
  if (retry > 5) {


   break;
  }
 }
}
