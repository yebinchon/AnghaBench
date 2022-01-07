
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int (* bs_state_cb ) (int ,int ) ;} ;
struct bstp_port {int bp_active; int bp_state; int bp_ifp; struct bstp_state* bp_bs; } ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
bstp_notify_state(void *arg, int pending)
{
 struct bstp_port *bp = (struct bstp_port *)arg;
 struct bstp_state *bs = bp->bp_bs;

 if (bp->bp_active == 1 && bs->bs_state_cb != ((void*)0))
  (*bs->bs_state_cb)(bp->bp_ifp, bp->bp_state);
}
