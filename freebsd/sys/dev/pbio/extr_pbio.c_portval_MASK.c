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
struct pbio_softc {TYPE_1__* pd; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {char oldval; int /*<<< orphan*/  ipace; scalar_t__ diff; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  PBIOPRI ; 
 int /*<<< orphan*/  PBIO_PORTA ; 
 int /*<<< orphan*/  PBIO_PORTB ; 
 int /*<<< orphan*/  PBIO_PORTC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pbio_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int port, struct pbio_softc *scp, char *val)
{
	int err;

	for (;;) {
		switch (port) {
		case 0:
			*val = FUNC1(scp, PBIO_PORTA);
			break;
		case 1:
			*val = FUNC1(scp, PBIO_PORTB);
			break;
		case 2:
			*val = (FUNC1(scp, PBIO_PORTC) >> 4) & 0xf;
			break;
		case 3:
			*val = FUNC1(scp, PBIO_PORTC) & 0xf;
			break;
		default:
			*val = 0;
			break;
		}
		if (scp->pd[port].diff) {
			if (*val != scp->pd[port].oldval) {
				scp->pd[port].oldval = *val;
				return (0);
			}
			err = FUNC2((caddr_t)&(scp->pd[port].diff), PBIOPRI,
				     "pbiopl", FUNC0(1, scp->pd[port].ipace));
			if (err == EINTR)
				return (EINTR);
		} else
			return (0);
	}
}