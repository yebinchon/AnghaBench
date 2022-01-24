#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct iscsi_softc {int dummy; } ;
struct iscsi_session_remove {int dummy; } ;
struct iscsi_session_modify {int dummy; } ;
struct iscsi_session_list {int dummy; } ;
struct iscsi_session_add {int dummy; } ;
struct iscsi_daemon_send {int dummy; } ;
struct iscsi_daemon_request {int dummy; } ;
struct iscsi_daemon_receive {int dummy; } ;
struct iscsi_daemon_handoff {int dummy; } ;
struct iscsi_daemon_fail {int dummy; } ;
struct iscsi_daemon_connect {int dummy; } ;
struct cdev {struct iscsi_softc* si_drv1; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
#define  ISCSIDCONNECT 137 
#define  ISCSIDFAIL 136 
#define  ISCSIDHANDOFF 135 
#define  ISCSIDRECEIVE 134 
#define  ISCSIDSEND 133 
#define  ISCSIDWAIT 132 
#define  ISCSISADD 131 
#define  ISCSISLIST 130 
#define  ISCSISMODIFY 129 
#define  ISCSISREMOVE 128 
 int FUNC0 (struct iscsi_softc*,struct iscsi_daemon_connect*) ; 
 int FUNC1 (struct iscsi_softc*,struct iscsi_daemon_fail*) ; 
 int FUNC2 (struct iscsi_softc*,struct iscsi_daemon_handoff*) ; 
 int FUNC3 (struct iscsi_softc*,struct iscsi_daemon_receive*) ; 
 int FUNC4 (struct iscsi_softc*,struct iscsi_daemon_send*) ; 
 int FUNC5 (struct iscsi_softc*,struct iscsi_daemon_request*) ; 
 int FUNC6 (struct iscsi_softc*,struct iscsi_session_add*) ; 
 int FUNC7 (struct iscsi_softc*,struct iscsi_session_list*) ; 
 int FUNC8 (struct iscsi_softc*,struct iscsi_session_modify*) ; 
 int FUNC9 (struct iscsi_softc*,struct iscsi_session_remove*) ; 

__attribute__((used)) static int
FUNC10(struct cdev *dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td)
{
	struct iscsi_softc *sc;

	sc = dev->si_drv1;

	switch (cmd) {
	case ISCSIDWAIT:
		return (FUNC5(sc,
		    (struct iscsi_daemon_request *)arg));
	case ISCSIDHANDOFF:
		return (FUNC2(sc,
		    (struct iscsi_daemon_handoff *)arg));
	case ISCSIDFAIL:
		return (FUNC1(sc,
		    (struct iscsi_daemon_fail *)arg));
#ifdef ICL_KERNEL_PROXY
	case ISCSIDCONNECT:
		return (iscsi_ioctl_daemon_connect(sc,
		    (struct iscsi_daemon_connect *)arg));
	case ISCSIDSEND:
		return (iscsi_ioctl_daemon_send(sc,
		    (struct iscsi_daemon_send *)arg));
	case ISCSIDRECEIVE:
		return (iscsi_ioctl_daemon_receive(sc,
		    (struct iscsi_daemon_receive *)arg));
#endif /* ICL_KERNEL_PROXY */
	case ISCSISADD:
		return (FUNC6(sc,
		    (struct iscsi_session_add *)arg));
	case ISCSISREMOVE:
		return (FUNC9(sc,
		    (struct iscsi_session_remove *)arg));
	case ISCSISLIST:
		return (FUNC7(sc,
		    (struct iscsi_session_list *)arg));
	case ISCSISMODIFY:
		return (FUNC8(sc,
		    (struct iscsi_session_modify *)arg));
	default:
		return (EINVAL);
	}
}