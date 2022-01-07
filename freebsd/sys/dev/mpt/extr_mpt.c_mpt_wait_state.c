
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int dummy; } ;
typedef enum DB_STATE_BITS { ____Placeholder_DB_STATE_BITS } DB_STATE_BITS ;


 int DELAY (int) ;
 int MPT_FAIL ;
 int MPT_MAX_WAIT ;
 int MPT_OK ;
 int MPT_STATE (int ) ;
 int maxwait_state ;
 int mpt_rd_db (struct mpt_softc*) ;

__attribute__((used)) static int
mpt_wait_state(struct mpt_softc *mpt, enum DB_STATE_BITS state)
{
 int i;

 for (i = 0; i < MPT_MAX_WAIT; i++) {
  uint32_t db = mpt_rd_db(mpt);
  if (MPT_STATE(db) == state) {
   maxwait_state = i > maxwait_state ? i : maxwait_state;
   return (MPT_OK);
  }
  DELAY(100);
 }
 return (MPT_FAIL);
}
