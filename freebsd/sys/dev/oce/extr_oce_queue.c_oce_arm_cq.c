
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int16_t ;
struct TYPE_3__ {int num_popped; int qid; scalar_t__ event; int rearm; } ;
struct TYPE_4__ {int dw0; TYPE_1__ bits; int member_0; } ;
typedef TYPE_2__ cq_db_t ;
typedef int POCE_SOFTC ;


 int OCE_WRITE_REG32 (int ,int ,int ,int ) ;
 int PD_CQ_DB ;
 int db ;

void oce_arm_cq(POCE_SOFTC sc, int16_t qid, int npopped, uint32_t rearm)
{
 cq_db_t cq_db = { 0 };

 cq_db.bits.rearm = rearm;
 cq_db.bits.num_popped = npopped;
 cq_db.bits.event = 0;
 cq_db.bits.qid = qid;
 OCE_WRITE_REG32(sc, db, PD_CQ_DB, cq_db.dw0);

}
