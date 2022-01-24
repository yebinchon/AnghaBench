#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tuntap_softc {int /*<<< orphan*/  tun_rsel; } ;
struct thread {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifq_len; } ;
struct ifnet {TYPE_1__ if_snd; } ;
struct cdev {struct tuntap_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 struct ifnet* FUNC3 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static	int
FUNC6(struct cdev *dev, int events, struct thread *td)
{
	struct tuntap_softc *tp = dev->si_drv1;
	struct ifnet	*ifp = FUNC3(tp);
	int		revents = 0;

	FUNC4(ifp, "tunpoll\n");

	if (events & (POLLIN | POLLRDNORM)) {
		FUNC1(&ifp->if_snd);
		if (!FUNC0(&ifp->if_snd)) {
			FUNC4(ifp, "tunpoll q=%d\n", ifp->if_snd.ifq_len);
			revents |= events & (POLLIN | POLLRDNORM);
		} else {
			FUNC4(ifp, "tunpoll waiting\n");
			FUNC5(td, &tp->tun_rsel);
		}
		FUNC2(&ifp->if_snd);
	}
	revents |= events & (POLLOUT | POLLWRNORM);

	return (revents);
}