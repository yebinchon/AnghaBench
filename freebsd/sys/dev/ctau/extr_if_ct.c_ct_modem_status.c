
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ running; int * bd; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_8__ {scalar_t__ rts; scalar_t__ dtr; TYPE_1__* sys; } ;
typedef TYPE_2__ ct_chan_t ;
typedef int bdrv_t ;


 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_LE ;
 int TIOCM_RTS ;
 scalar_t__ ct_get_cd (TYPE_2__*) ;
 scalar_t__ ct_get_cts (TYPE_2__*) ;
 scalar_t__ ct_get_dsr (TYPE_2__*) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static int ct_modem_status (ct_chan_t *c)
{
 drv_t *d = c->sys;
 bdrv_t *bd;
 int status, s;

 if (!d)
  return 0;

 bd = d->bd;

 status = d->running ? TIOCM_LE : 0;
 s = splimp ();
 CT_LOCK (bd);
 if (ct_get_cd (c)) status |= TIOCM_CD;
 if (ct_get_cts (c)) status |= TIOCM_CTS;
 if (ct_get_dsr (c)) status |= TIOCM_DSR;
 if (c->dtr) status |= TIOCM_DTR;
 if (c->rts) status |= TIOCM_RTS;
 CT_UNLOCK (bd);
 splx (s);
 return status;
}
