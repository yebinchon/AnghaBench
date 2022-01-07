
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb_state; } ;
struct socket {TYPE_1__ so_snd; } ;


 int MA_NOTOWNED ;
 int SBS_CANTSENDMORE ;
 int SOCKBUF_LOCK_ASSERT (TYPE_1__*) ;
 int SOCKBUF_MTX (TYPE_1__*) ;
 int mtx_assert (int ,int ) ;
 int sowwakeup_locked (struct socket*) ;

void
socantsendmore_locked(struct socket *so)
{

 SOCKBUF_LOCK_ASSERT(&so->so_snd);

 so->so_snd.sb_state |= SBS_CANTSENDMORE;
 sowwakeup_locked(so);
 mtx_assert(SOCKBUF_MTX(&so->so_snd), MA_NOTOWNED);
}
