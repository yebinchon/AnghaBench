#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_22__ ;
typedef  struct TYPE_25__   TYPE_21__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct serial_statistics {int /*<<< orphan*/  oerrs; int /*<<< orphan*/  opkts; int /*<<< orphan*/  obytes; int /*<<< orphan*/  ierrs; int /*<<< orphan*/  ipkts; int /*<<< orphan*/  ibytes; int /*<<< orphan*/  mintr; int /*<<< orphan*/  tintr; int /*<<< orphan*/  rintr; } ;
struct cdev {TYPE_3__* si_drv1; } ;
typedef  int /*<<< orphan*/  mask ;
struct TYPE_28__ {int open_dev; TYPE_22__* ifp; int /*<<< orphan*/  running; TYPE_2__* tty; int /*<<< orphan*/  lock; TYPE_1__* board; TYPE_4__* chan; } ;
typedef  TYPE_3__ drv_t ;
struct TYPE_29__ {int debug; int debug_shadow; int /*<<< orphan*/  mode; int /*<<< orphan*/  oerrs; int /*<<< orphan*/  opkts; int /*<<< orphan*/  obytes; int /*<<< orphan*/  ierrs; int /*<<< orphan*/  ipkts; int /*<<< orphan*/  ibytes; int /*<<< orphan*/  mintr; int /*<<< orphan*/  tintr; int /*<<< orphan*/  rintr; } ;
typedef  TYPE_4__ cx_chan_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  bdrv_t ;
struct TYPE_27__ {int t_state; } ;
struct TYPE_26__ {int if_flags; int if_drv_flags; } ;
struct TYPE_25__ {int pp_flags; } ;
struct TYPE_24__ {int /*<<< orphan*/ * sys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOTTY ; 
 int IFF_DEBUG ; 
 int IFF_DRV_RUNNING ; 
 TYPE_21__* FUNC3 (TYPE_22__*) ; 
 int /*<<< orphan*/  M_ASYNC ; 
 int /*<<< orphan*/  M_HDLC ; 
 int NCHAN ; 
 int NCX ; 
 int PP_CISCO ; 
 int PP_FR ; 
 int PP_KEEPALIVE ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 int SERIAL_ASYNC ; 
#define  SERIAL_CLRSTAT 154 
#define  SERIAL_GETBAUD 153 
#define  SERIAL_GETDEBUG 152 
#define  SERIAL_GETDPLL 151 
#define  SERIAL_GETKEEPALIVE 150 
#define  SERIAL_GETLOOP 149 
#define  SERIAL_GETMODE 148 
#define  SERIAL_GETNRZI 147 
#define  SERIAL_GETPORT 146 
#define  SERIAL_GETPROTO 145 
#define  SERIAL_GETREGISTERED 144 
#define  SERIAL_GETSTAT 143 
 int SERIAL_HDLC ; 
#define  SERIAL_SETBAUD 142 
#define  SERIAL_SETDEBUG 141 
#define  SERIAL_SETDPLL 140 
#define  SERIAL_SETKEEPALIVE 139 
#define  SERIAL_SETLOOP 138 
#define  SERIAL_SETMODE 137 
#define  SERIAL_SETNRZI 136 
#define  SERIAL_SETPORT 135 
#define  SERIAL_SETPROTO 134 
#define  TIOCCDTR 133 
#define  TIOCMBIC 132 
#define  TIOCMBIS 131 
#define  TIOCMGET 130 
#define  TIOCMSET 129 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
#define  TIOCSDTR 128 
 int TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * channel ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 long FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,long) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int) ; 
 int FUNC22 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 

__attribute__((used)) static int FUNC27 (struct cdev *dev, u_long cmd, caddr_t data, int flag, struct thread *td)
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
	case SERIAL_GETREGISTERED:
		FUNC0 (d, ("ioctl: getregistered\n"));
		FUNC5 (mask, sizeof(mask));
		for (s=0; s<NCX*NCHAN; ++s)
			if (channel [s])
				mask [s/8] |= 1 << (s & 7);
		FUNC4 (mask, data, sizeof (mask));
		return 0;

	case SERIAL_GETPORT:
		FUNC0 (d, ("ioctl: getport\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		*(int *)data = FUNC12 (c);
		FUNC2 (bd);
		FUNC24 (s);
		if (*(int *)data<0)
			return (EINVAL);
		else
			return 0;

	case SERIAL_SETPORT:
		FUNC0 (d, ("ioctl: setproto\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;

		s = FUNC23 ();
		FUNC1 (bd);
		FUNC20 (c, *(int *)data);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

#ifndef NETGRAPH
	case SERIAL_GETPROTO:
		FUNC0 (d, ("ioctl: getproto\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC26 ((char*)data, (c->mode == M_ASYNC) ? "async" :
			(FUNC3(d->ifp)->pp_flags & PP_FR) ? "fr" :
			(d->ifp->if_flags & PP_CISCO) ? "cisco" : "ppp");
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETPROTO:
		FUNC0 (d, ("ioctl: setproto\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if (c->mode == M_ASYNC)
			return EBUSY;
		if (d->ifp->if_drv_flags & IFF_DRV_RUNNING)
			return EBUSY;
		if (! FUNC25 ("cisco", (char*)data)) {
			FUNC3(d->ifp)->pp_flags &= ~(PP_FR);
			FUNC3(d->ifp)->pp_flags |= PP_KEEPALIVE;
			d->ifp->if_flags |= PP_CISCO;
		} else if (! FUNC25 ("fr", (char*)data)) {
			d->ifp->if_flags &= ~(PP_CISCO);
			FUNC3(d->ifp)->pp_flags |= PP_FR | PP_KEEPALIVE;
		} else if (! FUNC25 ("ppp", (char*)data)) {
			FUNC3(d->ifp)->pp_flags &= ~(PP_FR | PP_KEEPALIVE);
			d->ifp->if_flags &= ~(PP_CISCO);
		} else
			return EINVAL;
		return 0;

	case SERIAL_GETKEEPALIVE:
		FUNC0 (d, ("ioctl: getkeepalive\n"));
		if ((FUNC3(d->ifp)->pp_flags & PP_FR) ||
		    (d->ifp->if_flags & PP_CISCO) ||
		    (c->mode == M_ASYNC))
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = (FUNC3(d->ifp)->pp_flags & PP_KEEPALIVE) ? 1 : 0;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETKEEPALIVE:
		FUNC0 (d, ("ioctl: setkeepalive\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if ((FUNC3(d->ifp)->pp_flags & PP_FR) ||
			(d->ifp->if_flags & PP_CISCO))
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		if (*(int*)data)
			FUNC3(d->ifp)->pp_flags |= PP_KEEPALIVE;
		else
			FUNC3(d->ifp)->pp_flags &= ~PP_KEEPALIVE;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;
#endif /*NETGRAPH*/

	case SERIAL_GETMODE:
		FUNC0 (d, ("ioctl: getmode\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = (c->mode == M_ASYNC) ?
			SERIAL_ASYNC : SERIAL_HDLC;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETMODE:
		FUNC0 (d, ("ioctl: setmode\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;

		/* Somebody is waiting for carrier? */
		if (d->lock)
			return EBUSY;
		/* /dev/ttyXX is already opened by someone? */
		if (c->mode == M_ASYNC && d->tty && (d->tty->t_state & TS_ISOPEN) &&
		    (d->open_dev|0x2))
			return EBUSY;
		/* Network interface is up?
		 * Cannot change to async mode. */
		if (c->mode != M_ASYNC && d->running &&
		    (*(int*)data == SERIAL_ASYNC))
			return EBUSY;

		s = FUNC23 ();
		FUNC1 (bd);
		if (c->mode == M_HDLC && *(int*)data == SERIAL_ASYNC) {
			FUNC18 (c, M_ASYNC);
			FUNC6 (c, 0);
			FUNC7 (c, 0);
		} else if (c->mode == M_ASYNC && *(int*)data == SERIAL_HDLC) {
			if (d->ifp->if_flags & IFF_DEBUG)
				c->debug = c->debug_shadow;
			FUNC18 (c, M_HDLC);
			FUNC6 (c, 1);
			FUNC7 (c, 1);
		}
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETSTAT:
		FUNC0 (d, ("ioctl: getestat\n"));
		st = (struct serial_statistics*) data;
		s = FUNC23 ();
		FUNC1 (bd);
		st->rintr  = c->rintr;
		st->tintr  = c->tintr;
		st->mintr  = c->mintr;
		st->ibytes = c->ibytes;
		st->ipkts  = c->ipkts;
		st->ierrs  = c->ierrs;
		st->obytes = c->obytes;
		st->opkts  = c->opkts;
		st->oerrs  = c->oerrs;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_CLRSTAT:
		FUNC0 (d, ("ioctl: clrstat\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		s = FUNC23 ();
		FUNC1 (bd);
		c->rintr = 0;
		c->tintr = 0;
		c->mintr = 0;
		c->ibytes = 0;
		c->ipkts = 0;
		c->ierrs = 0;
		c->obytes = 0;
		c->opkts = 0;
		c->oerrs = 0;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETBAUD:
		FUNC0 (d, ("ioctl: getbaud\n"));
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		*(long*)data = FUNC8(c);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETBAUD:
		FUNC0 (d, ("ioctl: setbaud\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC14 (c, *(long*)data);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETLOOP:
		FUNC0 (d, ("ioctl: getloop\n"));
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = FUNC10 (c);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETLOOP:
		FUNC0 (d, ("ioctl: setloop\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC17 (c, *(int*)data);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETDPLL:
		FUNC0 (d, ("ioctl: getdpll\n"));
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = FUNC9 (c);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETDPLL:
		FUNC0 (d, ("ioctl: setdpll\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC15 (c, *(int*)data);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETNRZI:
		FUNC0 (d, ("ioctl: getnrzi\n"));
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = FUNC11 (c);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETNRZI:
		FUNC0 (d, ("ioctl: setnrzi\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		if (c->mode == M_ASYNC)
			return EINVAL;
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC19 (c, *(int*)data);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_GETDEBUG:
		FUNC0 (d, ("ioctl: getdebug\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		*(int*)data = c->debug;
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case SERIAL_SETDEBUG:
		FUNC0 (d, ("ioctl: setdebug\n"));
		/* Only for superuser! */
		error = FUNC22 (td, PRIV_DRIVER);
		if (error)
			return error;
		s = FUNC23 ();
		FUNC1 (bd);
#ifndef	NETGRAPH
		if (c->mode == M_ASYNC) {
			c->debug = *(int*)data;
		} else {
			/*
			 * The debug_shadow is always greater than zero for
			 * logic simplicity.  For switching debug off the
			 * IFF_DEBUG is responsible (for !M_ASYNC mode).
			 */
			c->debug_shadow = (*(int*)data) ? (*(int*)data) : 1;
			if (d->ifp->if_flags & IFF_DEBUG)
				c->debug = c->debug_shadow;
		}
#else
		c->debug = *(int*)data;
#endif
		FUNC2 (bd);
		FUNC24 (s);
		return 0;
	}

	switch (cmd) {
	case TIOCSDTR:	/* Set DTR */
		FUNC0 (d, ("ioctl: tiocsdtr\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC16 (c, 1);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case TIOCCDTR:	/* Clear DTR */
		FUNC0 (d, ("ioctl: tioccdtr\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC16 (c, 0);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case TIOCMSET:	/* Set DTR/RTS */
		FUNC0 (d, ("ioctl: tiocmset\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		FUNC16 (c, (*(int*)data & TIOCM_DTR) ? 1 : 0);
		FUNC21 (c, (*(int*)data & TIOCM_RTS) ? 1 : 0);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case TIOCMBIS:	/* Add DTR/RTS */
		FUNC0 (d, ("ioctl: tiocmbis\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		if (*(int*)data & TIOCM_DTR) FUNC16 (c, 1);
		if (*(int*)data & TIOCM_RTS) FUNC21 (c, 1);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case TIOCMBIC:	/* Clear DTR/RTS */
		FUNC0 (d, ("ioctl: tiocmbic\n"));
		s = FUNC23 ();
		FUNC1 (bd);
		if (*(int*)data & TIOCM_DTR) FUNC16 (c, 0);
		if (*(int*)data & TIOCM_RTS) FUNC21 (c, 0);
		FUNC2 (bd);
		FUNC24 (s);
		return 0;

	case TIOCMGET:	/* Get modem status */
		FUNC0 (d, ("ioctl: tiocmget\n"));
		*(int*)data = FUNC13 (d);
		return 0;

	}

	FUNC0 (d, ("ioctl: 0x%lx\n", cmd));
	return ENOTTY;
}