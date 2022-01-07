
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int MPI2_HIS_IOC2SYS_DB_STATUS ;
 int MPI2_HOST_INTERRUPT_STATUS_OFFSET ;
 int MPR_DB_MAX_WAIT ;
 int mpr_regread (struct mpr_softc*,int ) ;

__attribute__((used)) static int
mpr_wait_db_int(struct mpr_softc *sc)
{
 int retry;

 for (retry = 0; retry < MPR_DB_MAX_WAIT; retry++) {
  if ((mpr_regread(sc, MPI2_HOST_INTERRUPT_STATUS_OFFSET) &
      MPI2_HIS_IOC2SYS_DB_STATUS) != 0)
   return (0);
  DELAY(2000);
 }
 return (ETIMEDOUT);
}
