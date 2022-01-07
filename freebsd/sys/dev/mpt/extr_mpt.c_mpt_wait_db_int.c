
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int dummy; } ;


 int DELAY (int) ;
 scalar_t__ MPT_DB_INTR (int ) ;
 int MPT_FAIL ;
 int MPT_MAX_WAIT ;
 int MPT_OK ;
 int maxwait_int ;
 int mpt_rd_intr (struct mpt_softc*) ;

__attribute__((used)) static int
mpt_wait_db_int(struct mpt_softc *mpt)
{
 int i;

 for (i = 0; i < MPT_MAX_WAIT; i++) {
  if (MPT_DB_INTR(mpt_rd_intr(mpt))) {
   maxwait_int = i > maxwait_int ? i : maxwait_int;
   return MPT_OK;
  }
  DELAY(100);
 }
 return (MPT_FAIL);
}
