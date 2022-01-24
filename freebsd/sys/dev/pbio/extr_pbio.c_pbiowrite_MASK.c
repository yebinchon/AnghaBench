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
struct TYPE_2__ {char* buff; scalar_t__ opace; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PBIOPRI ; 
 int /*<<< orphan*/  PBIO_BUFSIZ ; 
 int /*<<< orphan*/  PBIO_PORTA ; 
 int /*<<< orphan*/  PBIO_PORTB ; 
 int /*<<< orphan*/  PBIO_PORTC ; 
 int FUNC0 (struct cdev*) ; 
 int FUNC1 (struct cdev*) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 char FUNC3 (struct pbio_softc*,int /*<<< orphan*/ ) ; 
 struct pbio_softc* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pbio_softc*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC7 (char*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct pbio_softc *scp;
	int i, port, ret, towrite, unit;
	char val, oval;
	
	unit = FUNC1(dev);
	port = FUNC0(dev);
	scp = FUNC4(unit);
	if (scp == NULL)
		return (ENODEV);

	while (uio->uio_resid > 0) {
		towrite = FUNC2(uio->uio_resid, PBIO_BUFSIZ);
		if ((ret = FUNC7(scp->pd[port].buff, towrite, uio)) != 0)
			return (ret);
		for (i = 0; i < towrite; i++) {
			val = scp->pd[port].buff[i];
			switch (port) {
			case 0:
				FUNC5(scp, PBIO_PORTA, val);
				break;
			case 1:
				FUNC5(scp, PBIO_PORTB, val);
				break;
			case 2:
				oval = FUNC3(scp, PBIO_PORTC);
				oval &= 0xf;
				val <<= 4;
				FUNC5(scp, PBIO_PORTC, val | oval);
				break;
			case 3:
				oval = FUNC3(scp, PBIO_PORTC);
				oval &= 0xf0;
				val &= 0xf;
				FUNC5(scp, PBIO_PORTC, oval | val);
				break;
			}
			if (scp->pd[port].opace)
				FUNC6((caddr_t)&(scp->pd[port].opace),
					PBIOPRI, "pbioop",
					scp->pd[port].opace);
		}
	}
	return (0);
}