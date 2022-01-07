
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct xtty {int xt_size; int xt_dev; int xt_flags; int xt_sid; int xt_pgid; int xt_column; int xt_outlow; int xt_outcc; int xt_outsize; int xt_inlow; int xt_inlc; int xt_incc; int xt_insize; } ;
struct tty {scalar_t__ t_dev; int t_flags; TYPE_2__* t_session; TYPE_1__* t_pgrp; int t_column; int t_outlow; int t_outq; int t_inlow; int t_inq; } ;
struct TYPE_4__ {int s_sid; } ;
struct TYPE_3__ {int pg_id; } ;


 int MA_OWNED ;
 scalar_t__ NODEV ;
 int dev2udev (scalar_t__) ;
 int tty_lock_assert (struct tty*,int ) ;
 int ttyinq_bytescanonicalized (int *) ;
 int ttyinq_bytesline (int *) ;
 int ttyinq_getsize (int *) ;
 int ttyoutq_bytesused (int *) ;
 int ttyoutq_getsize (int *) ;

__attribute__((used)) static void
tty_to_xtty(struct tty *tp, struct xtty *xt)
{

 tty_lock_assert(tp, MA_OWNED);

 xt->xt_size = sizeof(struct xtty);
 xt->xt_insize = ttyinq_getsize(&tp->t_inq);
 xt->xt_incc = ttyinq_bytescanonicalized(&tp->t_inq);
 xt->xt_inlc = ttyinq_bytesline(&tp->t_inq);
 xt->xt_inlow = tp->t_inlow;
 xt->xt_outsize = ttyoutq_getsize(&tp->t_outq);
 xt->xt_outcc = ttyoutq_bytesused(&tp->t_outq);
 xt->xt_outlow = tp->t_outlow;
 xt->xt_column = tp->t_column;
 xt->xt_pgid = tp->t_pgrp ? tp->t_pgrp->pg_id : 0;
 xt->xt_sid = tp->t_session ? tp->t_session->s_sid : 0;
 xt->xt_flags = tp->t_flags;
 xt->xt_dev = tp->t_dev ? dev2udev(tp->t_dev) : (uint32_t)NODEV;
}
