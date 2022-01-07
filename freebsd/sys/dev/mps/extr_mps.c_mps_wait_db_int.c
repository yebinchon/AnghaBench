
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int MPI2_HIS_IOC2SYS_DB_STATUS ;
 int MPI2_HOST_INTERRUPT_STATUS_OFFSET ;
 int MPS_DB_MAX_WAIT ;
 int mps_regread (struct mps_softc*,int ) ;

__attribute__((used)) static int
mps_wait_db_int(struct mps_softc *sc)
{
 int retry;

 for (retry = 0; retry < MPS_DB_MAX_WAIT; retry++) {
  if ((mps_regread(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET) &
      MPI2_HIS_IOC2SYS_DB_STATUS) != 0)
   return (0);
  DELAY(2000);
 }
 return (ETIMEDOUT);
}
