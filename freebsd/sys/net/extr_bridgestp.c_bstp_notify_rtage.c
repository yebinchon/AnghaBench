
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int (* bs_rtage_cb ) (int ,int) ;} ;
struct bstp_port {int bp_protover; int bp_desg_fdelay; int bp_active; scalar_t__ bp_fdbflush; int bp_ifp; struct bstp_state* bp_bs; } ;


 int BSTP_LOCK (struct bstp_state*) ;


 int BSTP_TICK_VAL ;
 int BSTP_UNLOCK (struct bstp_state*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
bstp_notify_rtage(void *arg, int pending)
{
 struct bstp_port *bp = (struct bstp_port *)arg;
 struct bstp_state *bs = bp->bp_bs;
 int age = 0;

 BSTP_LOCK(bs);
 switch (bp->bp_protover) {
  case 128:

   age = bp->bp_desg_fdelay / BSTP_TICK_VAL;
   break;

  case 129:
   age = 0;
   break;
 }
 BSTP_UNLOCK(bs);

 if (bp->bp_active == 1 && bs->bs_rtage_cb != ((void*)0))
  (*bs->bs_rtage_cb)(bp->bp_ifp, age);


 BSTP_LOCK(bs);
 bp->bp_fdbflush = 0;
 BSTP_UNLOCK(bs);
}
