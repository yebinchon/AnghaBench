
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_state; } ;
struct socket {TYPE_1__ so_rcv; } ;


 int MA_NOTOWNED ;
 int SBS_CANTRCVMORE ;
 int SOCKBUF_LOCK_ASSERT (TYPE_1__*) ;
 int SOCKBUF_MTX (TYPE_1__*) ;
 int mtx_assert (int ,int ) ;
 int sorwakeup_locked (struct socket*) ;

void
socantrcvmore_locked(struct socket *so)
{

 SOCKBUF_LOCK_ASSERT(&so->so_rcv);

 so->so_rcv.sb_state |= SBS_CANTRCVMORE;
 sorwakeup_locked(so);
 mtx_assert(SOCKBUF_MTX(&so->so_rcv), MA_NOTOWNED);
}
