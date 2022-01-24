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
struct uio {scalar_t__ uio_resid; } ;
struct pbio_softc {TYPE_1__* pd; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {char* buff; scalar_t__ ipace; int /*<<< orphan*/  diff; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PBIOPRI ; 
 int /*<<< orphan*/  PBIO_BUFSIZ ; 
 int FUNC0 (struct cdev*) ; 
 int FUNC1 (struct cdev*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct pbio_softc* FUNC3 (int) ; 
 int FUNC4 (int,struct pbio_softc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC6 (char*,int,struct uio*) ; 

__attribute__((used)) static  int
FUNC7(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct pbio_softc *scp;
	int err, i, port, ret, toread, unit;
	char val;
	
	unit = FUNC1(dev);
	port = FUNC0(dev);
	scp = FUNC3(unit);
	if (scp == NULL)
		return (ENODEV);

	while (uio->uio_resid > 0) {
		toread = FUNC2(uio->uio_resid, PBIO_BUFSIZ);
		if ((ret = FUNC6(scp->pd[port].buff, toread, uio)) != 0)
			return (ret);
		for (i = 0; i < toread; i++) {
			if ((err = FUNC4(port, scp, &val)) != 0)
				return (err);
			scp->pd[port].buff[i] = val;
			if (!scp->pd[port].diff && scp->pd[port].ipace)
				FUNC5((caddr_t)&(scp->pd[port].ipace), PBIOPRI,
					"pbioip", scp->pd[port].ipace);
		}
	}
	return 0;
}