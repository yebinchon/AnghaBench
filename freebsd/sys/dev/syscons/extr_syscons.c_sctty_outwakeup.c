
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct tty {int dummy; } ;
struct TYPE_6__ {int status; TYPE_4__* sc; } ;
typedef TYPE_1__ scr_stat ;
struct TYPE_7__ {scalar_t__ blink_in_progress; TYPE_1__* cur_scp; } ;


 int PCBURST ;
 int SC_VIDEO_LOCK (TYPE_4__*) ;
 int SC_VIDEO_UNLOCK (TYPE_4__*) ;
 int SLKED ;
 TYPE_1__* sc_get_stat (struct tty*) ;
 int sc_puts (TYPE_1__*,int *,size_t) ;
 size_t ttydisc_getc (struct tty*,int *,int) ;

__attribute__((used)) static void
sctty_outwakeup(struct tty *tp)
{
    size_t len;
    u_char buf[PCBURST];
    scr_stat *scp = sc_get_stat(tp);

    if (scp->status & SLKED ||
 (scp == scp->sc->cur_scp && scp->sc->blink_in_progress))
 return;

    for (;;) {
 len = ttydisc_getc(tp, buf, sizeof buf);
 if (len == 0)
     break;
 SC_VIDEO_LOCK(scp->sc);
 sc_puts(scp, buf, len);
 SC_VIDEO_UNLOCK(scp->sc);
    }
}
