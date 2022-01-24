#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  octet; } ;
struct tuntap_softc {int tun_flags; int tun_vhdrlen; int /*<<< orphan*/  tun_sigio; int /*<<< orphan*/  tun_pid; TYPE_1__ tun_ether; } ;
struct tuninfo {int /*<<< orphan*/  baudrate; int /*<<< orphan*/  type; int /*<<< orphan*/  mtu; } ;
struct thread {int dummy; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; int /*<<< orphan*/  ifr_name; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_baudrate; int /*<<< orphan*/  if_type; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_vnet; int /*<<< orphan*/  if_xname; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_6__ {TYPE_2__* td_proc; } ;
struct TYPE_5__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOTTY ; 
 int EPROTOTYPE ; 
#define  FIOASYNC 151 
#define  FIOGETOWN 150 
#define  FIONBIO 149 
#define  FIONREAD 148 
#define  FIOSETOWN 147 
#define  IFF_BROADCAST 146 
 int IFF_CANTCHANGE ; 
 int IFF_MULTICAST ; 
#define  IFF_POINTOPOINT 145 
 int IFF_UP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
#define  SIOCGIFADDR 144 
#define  SIOCSIFADDR 143 
 int /*<<< orphan*/  SIOCSIFMTU ; 
#define  TAPGVNETHDR 142 
#define  TAPSVNETHDR 141 
#define  TIOCGPGRP 140 
#define  TIOCSPGRP 139 
 struct ifnet* FUNC7 (struct tuntap_softc*) ; 
#define  TUNGDEBUG 138 
#define  TUNGIFHEAD 137 
#define  TUNGIFINFO 136 
#define  TUNGIFNAME 135 
#define  TUNSDEBUG 134 
#define  TUNSIFHEAD 133 
#define  TUNSIFINFO 132 
#define  TUNSIFMODE 131 
#define  TUNSIFPID 130 
#define  TUNSLMODE 129 
 int TUN_ASYNC ; 
 int TUN_IFHEAD ; 
 int TUN_L2 ; 
 int TUN_LMODE ; 
 int /*<<< orphan*/  FUNC8 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tuntap_softc*) ; 
 int TUN_VMIO_FLAG_MASK ; 
#define  VMIO_SIOCSIFFLAGS 128 
 int FUNC10 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* curthread ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ *,struct thread*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*,int) ; 
 int tundebug ; 

__attribute__((used)) static	int
FUNC18(struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{
	struct ifreq ifr, *ifrp;
	struct tuntap_softc *tp = dev->si_drv1;
	struct ifnet *ifp = FUNC7(tp);
	struct tuninfo *tunp;
	int error, iflags, ival;
	bool	l2tun;

	l2tun = (tp->tun_flags & TUN_L2) != 0;
	if (l2tun) {
		/* tap specific ioctls */
		switch(cmd) {
		/* VMware/VMnet port ioctl's */
#if defined(COMPAT_FREEBSD6) || defined(COMPAT_FREEBSD5) || \
    defined(COMPAT_FREEBSD4)
		case _IO('V', 0):
			ival = IOCPARM_IVAL(data);
			data = (caddr_t)&ival;
			/* FALLTHROUGH */
#endif
		case VMIO_SIOCSIFFLAGS: /* VMware/VMnet SIOCSIFFLAGS */
			iflags = *(int *)data;
			iflags &= TUN_VMIO_FLAG_MASK;
			iflags &= ~IFF_CANTCHANGE;
			iflags |= IFF_UP;

			FUNC8(tp);
			ifp->if_flags = iflags |
			    (ifp->if_flags & IFF_CANTCHANGE);
			FUNC9(tp);

			return (0);
		case SIOCGIFADDR:	/* get MAC address of the remote side */
			FUNC8(tp);
			FUNC11(&tp->tun_ether.octet, data,
			    sizeof(tp->tun_ether.octet));
			FUNC9(tp);

			return (0);
		case SIOCSIFADDR:	/* set MAC address of the remote side */
			FUNC8(tp);
			FUNC11(data, &tp->tun_ether.octet,
			    sizeof(tp->tun_ether.octet));
			FUNC9(tp);

			return (0);
		case TAPSVNETHDR:
			ival = *(int *)data;
			if (ival != 0 &&
			    ival != sizeof(struct virtio_net_hdr) &&
			    ival != sizeof(struct virtio_net_hdr_mrg_rxbuf)) {
				return (EINVAL);
			}
			FUNC8(tp);
			FUNC17(ifp, ival);
			FUNC9(tp);

			return (0);
		case TAPGVNETHDR:
			FUNC8(tp);
			*(int *)data = tp->tun_vhdrlen;
			FUNC9(tp);

			return (0);
		}

		/* Fall through to the common ioctls if unhandled */
	} else {
		switch (cmd) {
		case TUNSLMODE:
			FUNC8(tp);
			if (*(int *)data) {
				tp->tun_flags |= TUN_LMODE;
				tp->tun_flags &= ~TUN_IFHEAD;
			} else
				tp->tun_flags &= ~TUN_LMODE;
			FUNC9(tp);

			return (0);
		case TUNSIFHEAD:
			FUNC8(tp);
			if (*(int *)data) {
				tp->tun_flags |= TUN_IFHEAD;
				tp->tun_flags &= ~TUN_LMODE;
			} else
				tp->tun_flags &= ~TUN_IFHEAD;
			FUNC9(tp);

			return (0);
		case TUNGIFHEAD:
			FUNC8(tp);
			*(int *)data = (tp->tun_flags & TUN_IFHEAD) ? 1 : 0;
			FUNC9(tp);

			return (0);
		case TUNSIFMODE:
			/* deny this if UP */
			if (FUNC7(tp)->if_flags & IFF_UP)
				return (EBUSY);

			switch (*(int *)data & ~IFF_MULTICAST) {
			case IFF_POINTOPOINT:
			case IFF_BROADCAST:
				FUNC8(tp);
				FUNC7(tp)->if_flags &=
				    ~(IFF_BROADCAST|IFF_POINTOPOINT|IFF_MULTICAST);
				FUNC7(tp)->if_flags |= *(int *)data;
				FUNC9(tp);

				break;
			default:
				return (EINVAL);
			}

			return (0);
		case TUNSIFPID:
			FUNC8(tp);
			tp->tun_pid = curthread->td_proc->p_pid;
			FUNC9(tp);

			return (0);
		}
		/* Fall through to the common ioctls if unhandled */
	}

	switch (cmd) {
	case TUNGIFNAME:
		ifrp = (struct ifreq *)data;
		FUNC16(ifrp->ifr_name, FUNC7(tp)->if_xname, IFNAMSIZ);

		return (0);
	case TUNSIFINFO:
		tunp = (struct tuninfo *)data;
		if (FUNC7(tp)->if_type != tunp->type)
			return (EPROTOTYPE);
		FUNC8(tp);
		if (FUNC7(tp)->if_mtu != tunp->mtu) {
			FUNC16(ifr.ifr_name, FUNC14(FUNC7(tp)), IFNAMSIZ);
			ifr.ifr_mtu = tunp->mtu;
			FUNC1(FUNC7(tp)->if_vnet);
			error = FUNC15(SIOCSIFMTU, FUNC7(tp),
			    (caddr_t)&ifr, td);
			FUNC0();
			if (error) {
				FUNC9(tp);
				return (error);
			}
		}
		FUNC7(tp)->if_baudrate = tunp->baudrate;
		FUNC9(tp);
		break;
	case TUNGIFINFO:
		tunp = (struct tuninfo *)data;
		FUNC8(tp);
		tunp->mtu = FUNC7(tp)->if_mtu;
		tunp->type = FUNC7(tp)->if_type;
		tunp->baudrate = FUNC7(tp)->if_baudrate;
		FUNC9(tp);
		break;
	case TUNSDEBUG:
		tundebug = *(int *)data;
		break;
	case TUNGDEBUG:
		*(int *)data = tundebug;
		break;
	case FIONBIO:
		break;
	case FIOASYNC:
		FUNC8(tp);
		if (*(int *)data)
			tp->tun_flags |= TUN_ASYNC;
		else
			tp->tun_flags &= ~TUN_ASYNC;
		FUNC9(tp);
		break;
	case FIONREAD:
		if (!FUNC2(&FUNC7(tp)->if_snd)) {
			struct mbuf *mb;
			FUNC3(&FUNC7(tp)->if_snd);
			FUNC4(&FUNC7(tp)->if_snd, mb);
			for (*(int *)data = 0; mb != NULL; mb = mb->m_next)
				*(int *)data += mb->m_len;
			FUNC5(&FUNC7(tp)->if_snd);
		} else
			*(int *)data = 0;
		break;
	case FIOSETOWN:
		return (FUNC13(*(int *)data, &tp->tun_sigio));

	case FIOGETOWN:
		*(int *)data = FUNC12(&tp->tun_sigio);
		return (0);

	/* This is deprecated, FIOSETOWN should be used instead. */
	case TIOCSPGRP:
		return (FUNC13(-(*(int *)data), &tp->tun_sigio));

	/* This is deprecated, FIOGETOWN should be used instead. */
	case TIOCGPGRP:
		*(int *)data = -FUNC12(&tp->tun_sigio);
		return (0);

	default:
		return (ENOTTY);
	}
	return (0);
}