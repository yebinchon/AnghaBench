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
typedef  int u_char ;
struct thread {int dummy; } ;
struct lpt_data {int sc_irq; int /*<<< orphan*/  sc_dev; } ;
struct cdev {struct lpt_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
#define  LPT_IRQ 128 
 int LP_ENABLE_EXT ; 
 int LP_ENABLE_IRQ ; 
 int LP_HAS_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static	int
FUNC5(struct cdev *dev, u_long cmd, caddr_t data, int flags, struct thread *td)
{
	int	error = 0;
	struct lpt_data *sc = dev->si_drv1;
	device_t ppbus;
	u_char	old_sc_irq;	/* old printer IRQ status */

	switch (cmd) {
	case LPT_IRQ :
		ppbus = FUNC1(sc->sc_dev);
		FUNC3(ppbus);
		if (sc->sc_irq & LP_HAS_IRQ) {
			/*
			 * NOTE:
			 * If the IRQ status is changed,
			 * this will only be visible on the
			 * next open.
			 *
			 * If interrupt status changes,
			 * this gets syslog'd.
			 */
			old_sc_irq = sc->sc_irq;
			switch (*(int*)data) {
			case 0:
				sc->sc_irq &= (~LP_ENABLE_IRQ);
				break;
			case 1:
				sc->sc_irq &= (~LP_ENABLE_EXT);
				sc->sc_irq |= LP_ENABLE_IRQ;
				break;
			case 2:
				/* classic irq based transfer and advanced
				 * modes are in conflict
				 */
				sc->sc_irq &= (~LP_ENABLE_IRQ);
				sc->sc_irq |= LP_ENABLE_EXT;
				break;
			case 3:
				sc->sc_irq &= (~LP_ENABLE_EXT);
				break;
			default:
				break;
			}

			if (old_sc_irq != sc->sc_irq )
				FUNC2(LOG_NOTICE, "%s: switched to %s %s mode\n",
					FUNC0(sc->sc_dev),
					(sc->sc_irq & LP_ENABLE_IRQ)?
					"interrupt-driven":"polled",
					(sc->sc_irq & LP_ENABLE_EXT)?
					"extended":"standard");
		} else /* polled port */
			error = EOPNOTSUPP;
		FUNC4(ppbus);
		break;
	default:
		error = ENODEV;
	}

	return(error);
}