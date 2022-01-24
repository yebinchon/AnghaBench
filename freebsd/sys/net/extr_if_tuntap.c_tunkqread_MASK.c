#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tuntap_softc {struct cdev* tun_dev; } ;
struct knote {int /*<<< orphan*/  kn_data; struct tuntap_softc* kn_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifq_len; } ;
struct ifnet {int /*<<< orphan*/  if_xname; TYPE_1__ if_snd; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 struct ifnet* FUNC0 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	int			ret;
	struct tuntap_softc	*tp = kn->kn_hook;
	struct cdev		*dev = tp->tun_dev;
	struct ifnet	*ifp = FUNC0(tp);

	if ((kn->kn_data = ifp->if_snd.ifq_len) > 0) {
		FUNC1(ifp,
		    "%s have data in the queue.  Len = %d, minor = %#x\n",
		    ifp->if_xname, ifp->if_snd.ifq_len, FUNC2(dev));
		ret = 1;
	} else {
		FUNC1(ifp,
		    "%s waiting for data, minor = %#x\n", ifp->if_xname,
		    FUNC2(dev));
		ret = 0;
	}

	return (ret);
}