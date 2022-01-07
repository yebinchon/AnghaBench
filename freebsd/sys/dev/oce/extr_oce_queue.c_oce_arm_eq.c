
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int int16_t ;
struct TYPE_3__ {int event; int num_popped; int qid; void* clrint; void* rearm; } ;
struct TYPE_4__ {int dw0; TYPE_1__ bits; int member_0; } ;
typedef TYPE_2__ eq_db_t ;
typedef int POCE_SOFTC ;


 int OCE_WRITE_REG32 (int ,int ,int ,int ) ;
 int PD_EQ_DB ;
 int db ;

void
oce_arm_eq(POCE_SOFTC sc,
    int16_t qid, int npopped, uint32_t rearm, uint32_t clearint)
{
 eq_db_t eq_db = { 0 };

 eq_db.bits.rearm = rearm;
 eq_db.bits.event = 1;
 eq_db.bits.num_popped = npopped;
 eq_db.bits.clrint = clearint;
 eq_db.bits.qid = qid;
 OCE_WRITE_REG32(sc, db, PD_EQ_DB, eq_db.dw0);

}
