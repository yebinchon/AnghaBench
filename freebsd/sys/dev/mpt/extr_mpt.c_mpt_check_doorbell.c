
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mpt_softc {int dummy; } ;


 scalar_t__ MPT_DB_STATE_RUNNING ;
 scalar_t__ MPT_STATE (int ) ;
 int mpt_print_db (int ) ;
 int mpt_prt (struct mpt_softc*,char*) ;
 int mpt_rd_db (struct mpt_softc*) ;

void
mpt_check_doorbell(struct mpt_softc *mpt)
{
 uint32_t db = mpt_rd_db(mpt);

 if (MPT_STATE(db) != MPT_DB_STATE_RUNNING) {
  mpt_prt(mpt, "Device not running\n");
  mpt_print_db(db);
 }
}
