
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_22__ ;
typedef struct TYPE_25__ TYPE_21__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct serial_statistics {int oerrs; int opkts; int obytes; int ierrs; int ipkts; int ibytes; int mintr; int tintr; int rintr; } ;
struct cdev {TYPE_3__* si_drv1; } ;
typedef int mask ;
struct TYPE_28__ {int open_dev; TYPE_22__* ifp; int running; TYPE_2__* tty; int lock; TYPE_1__* board; TYPE_4__* chan; } ;
typedef TYPE_3__ drv_t ;
struct TYPE_29__ {int debug; int debug_shadow; int mode; int oerrs; int opkts; int obytes; int ierrs; int ipkts; int ibytes; int mintr; int tintr; int rintr; } ;
typedef TYPE_4__ cx_chan_t ;
typedef scalar_t__ caddr_t ;
typedef int bdrv_t ;
struct TYPE_27__ {int t_state; } ;
struct TYPE_26__ {int if_flags; int if_drv_flags; } ;
struct TYPE_25__ {int pp_flags; } ;
struct TYPE_24__ {int * sys; } ;


 int CX_DEBUG2 (TYPE_3__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int EBUSY ;
 int EINVAL ;
 int ENOTTY ;
 int IFF_DEBUG ;
 int IFF_DRV_RUNNING ;
 TYPE_21__* IFP2SP (TYPE_22__*) ;
 int M_ASYNC ;
 int M_HDLC ;
 int NCHAN ;
 int NCX ;
 int PP_CISCO ;
 int PP_FR ;
 int PP_KEEPALIVE ;
 int PRIV_DRIVER ;
 int SERIAL_ASYNC ;
 int SERIAL_HDLC ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;

 int TS_ISOPEN ;
 int bcopy (char*,scalar_t__,int) ;
 int bzero (char*,int) ;
 int * channel ;
 int cx_enable_receive (TYPE_4__*,int) ;
 int cx_enable_transmit (TYPE_4__*,int) ;
 long cx_get_baud (TYPE_4__*) ;
 int cx_get_dpll (TYPE_4__*) ;
 int cx_get_loop (TYPE_4__*) ;
 int cx_get_nrzi (TYPE_4__*) ;
 int cx_get_port (TYPE_4__*) ;
 int cx_modem_status (TYPE_3__*) ;
 int cx_set_baud (TYPE_4__*,long) ;
 int cx_set_dpll (TYPE_4__*,int) ;
 int cx_set_dtr (TYPE_4__*,int) ;
 int cx_set_loop (TYPE_4__*,int) ;
 int cx_set_mode (TYPE_4__*,int ) ;
 int cx_set_nrzi (TYPE_4__*,int) ;
 int cx_set_port (TYPE_4__*,int) ;
 int cx_set_rts (TYPE_4__*,int) ;
 int priv_check (struct thread*,int ) ;
 int splhigh () ;
 int splx (int) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int cx_ioctl (struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
{
 drv_t *d;
 bdrv_t *bd;
 cx_chan_t *c;
 struct serial_statistics *st;
 int error, s;
 char mask[16];

 d = dev->si_drv1;
 c = d->chan;

 bd = d->board->sys;

 switch (cmd) {
 case 144:
  CX_DEBUG2 (d, ("ioctl: getregistered\n"));
  bzero (mask, sizeof(mask));
  for (s=0; s<NCX*NCHAN; ++s)
   if (channel [s])
    mask [s/8] |= 1 << (s & 7);
  bcopy (mask, data, sizeof (mask));
  return 0;

 case 146:
  CX_DEBUG2 (d, ("ioctl: getport\n"));
  s = splhigh ();
  CX_LOCK (bd);
  *(int *)data = cx_get_port (c);
  CX_UNLOCK (bd);
  splx (s);
  if (*(int *)data<0)
   return (EINVAL);
  else
   return 0;

 case 135:
  CX_DEBUG2 (d, ("ioctl: setproto\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;

  s = splhigh ();
  CX_LOCK (bd);
  cx_set_port (c, *(int *)data);
  CX_UNLOCK (bd);
  splx (s);
  return 0;


 case 145:
  CX_DEBUG2 (d, ("ioctl: getproto\n"));
  s = splhigh ();
  CX_LOCK (bd);
  strcpy ((char*)data, (c->mode == M_ASYNC) ? "async" :
   (IFP2SP(d->ifp)->pp_flags & PP_FR) ? "fr" :
   (d->ifp->if_flags & PP_CISCO) ? "cisco" : "ppp");
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 134:
  CX_DEBUG2 (d, ("ioctl: setproto\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if (c->mode == M_ASYNC)
   return EBUSY;
  if (d->ifp->if_drv_flags & IFF_DRV_RUNNING)
   return EBUSY;
  if (! strcmp ("cisco", (char*)data)) {
   IFP2SP(d->ifp)->pp_flags &= ~(PP_FR);
   IFP2SP(d->ifp)->pp_flags |= PP_KEEPALIVE;
   d->ifp->if_flags |= PP_CISCO;
  } else if (! strcmp ("fr", (char*)data)) {
   d->ifp->if_flags &= ~(PP_CISCO);
   IFP2SP(d->ifp)->pp_flags |= PP_FR | PP_KEEPALIVE;
  } else if (! strcmp ("ppp", (char*)data)) {
   IFP2SP(d->ifp)->pp_flags &= ~(PP_FR | PP_KEEPALIVE);
   d->ifp->if_flags &= ~(PP_CISCO);
  } else
   return EINVAL;
  return 0;

 case 150:
  CX_DEBUG2 (d, ("ioctl: getkeepalive\n"));
  if ((IFP2SP(d->ifp)->pp_flags & PP_FR) ||
      (d->ifp->if_flags & PP_CISCO) ||
      (c->mode == M_ASYNC))
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = (IFP2SP(d->ifp)->pp_flags & PP_KEEPALIVE) ? 1 : 0;
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 139:
  CX_DEBUG2 (d, ("ioctl: setkeepalive\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if ((IFP2SP(d->ifp)->pp_flags & PP_FR) ||
   (d->ifp->if_flags & PP_CISCO))
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  if (*(int*)data)
   IFP2SP(d->ifp)->pp_flags |= PP_KEEPALIVE;
  else
   IFP2SP(d->ifp)->pp_flags &= ~PP_KEEPALIVE;
  CX_UNLOCK (bd);
  splx (s);
  return 0;


 case 148:
  CX_DEBUG2 (d, ("ioctl: getmode\n"));
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = (c->mode == M_ASYNC) ?
   SERIAL_ASYNC : SERIAL_HDLC;
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 137:
  CX_DEBUG2 (d, ("ioctl: setmode\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;


  if (d->lock)
   return EBUSY;

  if (c->mode == M_ASYNC && d->tty && (d->tty->t_state & TS_ISOPEN) &&
      (d->open_dev|0x2))
   return EBUSY;


  if (c->mode != M_ASYNC && d->running &&
      (*(int*)data == SERIAL_ASYNC))
   return EBUSY;

  s = splhigh ();
  CX_LOCK (bd);
  if (c->mode == M_HDLC && *(int*)data == SERIAL_ASYNC) {
   cx_set_mode (c, M_ASYNC);
   cx_enable_receive (c, 0);
   cx_enable_transmit (c, 0);
  } else if (c->mode == M_ASYNC && *(int*)data == SERIAL_HDLC) {
   if (d->ifp->if_flags & IFF_DEBUG)
    c->debug = c->debug_shadow;
   cx_set_mode (c, M_HDLC);
   cx_enable_receive (c, 1);
   cx_enable_transmit (c, 1);
  }
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 143:
  CX_DEBUG2 (d, ("ioctl: getestat\n"));
  st = (struct serial_statistics*) data;
  s = splhigh ();
  CX_LOCK (bd);
  st->rintr = c->rintr;
  st->tintr = c->tintr;
  st->mintr = c->mintr;
  st->ibytes = c->ibytes;
  st->ipkts = c->ipkts;
  st->ierrs = c->ierrs;
  st->obytes = c->obytes;
  st->opkts = c->opkts;
  st->oerrs = c->oerrs;
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 154:
  CX_DEBUG2 (d, ("ioctl: clrstat\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  s = splhigh ();
  CX_LOCK (bd);
  c->rintr = 0;
  c->tintr = 0;
  c->mintr = 0;
  c->ibytes = 0;
  c->ipkts = 0;
  c->ierrs = 0;
  c->obytes = 0;
  c->opkts = 0;
  c->oerrs = 0;
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 153:
  CX_DEBUG2 (d, ("ioctl: getbaud\n"));
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  *(long*)data = cx_get_baud(c);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 142:
  CX_DEBUG2 (d, ("ioctl: setbaud\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_baud (c, *(long*)data);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 149:
  CX_DEBUG2 (d, ("ioctl: getloop\n"));
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = cx_get_loop (c);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 138:
  CX_DEBUG2 (d, ("ioctl: setloop\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_loop (c, *(int*)data);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 151:
  CX_DEBUG2 (d, ("ioctl: getdpll\n"));
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = cx_get_dpll (c);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 140:
  CX_DEBUG2 (d, ("ioctl: setdpll\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_dpll (c, *(int*)data);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 147:
  CX_DEBUG2 (d, ("ioctl: getnrzi\n"));
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = cx_get_nrzi (c);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 136:
  CX_DEBUG2 (d, ("ioctl: setnrzi\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  if (c->mode == M_ASYNC)
   return EINVAL;
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_nrzi (c, *(int*)data);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 152:
  CX_DEBUG2 (d, ("ioctl: getdebug\n"));
  s = splhigh ();
  CX_LOCK (bd);
  *(int*)data = c->debug;
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 141:
  CX_DEBUG2 (d, ("ioctl: setdebug\n"));

  error = priv_check (td, PRIV_DRIVER);
  if (error)
   return error;
  s = splhigh ();
  CX_LOCK (bd);

  if (c->mode == M_ASYNC) {
   c->debug = *(int*)data;
  } else {





   c->debug_shadow = (*(int*)data) ? (*(int*)data) : 1;
   if (d->ifp->if_flags & IFF_DEBUG)
    c->debug = c->debug_shadow;
  }



  CX_UNLOCK (bd);
  splx (s);
  return 0;
 }

 switch (cmd) {
 case 128:
  CX_DEBUG2 (d, ("ioctl: tiocsdtr\n"));
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_dtr (c, 1);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 133:
  CX_DEBUG2 (d, ("ioctl: tioccdtr\n"));
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_dtr (c, 0);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 129:
  CX_DEBUG2 (d, ("ioctl: tiocmset\n"));
  s = splhigh ();
  CX_LOCK (bd);
  cx_set_dtr (c, (*(int*)data & TIOCM_DTR) ? 1 : 0);
  cx_set_rts (c, (*(int*)data & TIOCM_RTS) ? 1 : 0);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 131:
  CX_DEBUG2 (d, ("ioctl: tiocmbis\n"));
  s = splhigh ();
  CX_LOCK (bd);
  if (*(int*)data & TIOCM_DTR) cx_set_dtr (c, 1);
  if (*(int*)data & TIOCM_RTS) cx_set_rts (c, 1);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 132:
  CX_DEBUG2 (d, ("ioctl: tiocmbic\n"));
  s = splhigh ();
  CX_LOCK (bd);
  if (*(int*)data & TIOCM_DTR) cx_set_dtr (c, 0);
  if (*(int*)data & TIOCM_RTS) cx_set_rts (c, 0);
  CX_UNLOCK (bd);
  splx (s);
  return 0;

 case 130:
  CX_DEBUG2 (d, ("ioctl: tiocmget\n"));
  *(int*)data = cx_modem_status (d);
  return 0;

 }

 CX_DEBUG2 (d, ("ioctl: 0x%lx\n", cmd));
 return ENOTTY;
}
