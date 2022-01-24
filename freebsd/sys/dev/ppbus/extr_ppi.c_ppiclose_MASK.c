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
struct thread {int dummy; } ;
struct ppi_data {int /*<<< orphan*/  ppi_lock; int /*<<< orphan*/  ppi_flags; int /*<<< orphan*/  ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HAVE_PPBUS ; 
#define  PPB_ECP_FORWARD_IDLE 131 
#define  PPB_EPP_IDLE 130 
#define  PPB_PERIPHERAL_IDLE 129 
#define  PPB_REVERSE_IDLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct ppi_data *ppi = dev->si_drv1;
	device_t ppidev = ppi->ppi_device;
	device_t ppbus = FUNC0(ppidev);

	FUNC7(&ppi->ppi_lock);
	FUNC3(ppbus);
#ifdef PERIPH_1284
	switch (ppb_1284_get_state(ppbus)) {
	case PPB_PERIPHERAL_IDLE:
		ppb_peripheral_terminate(ppbus, 0);
		break;
	case PPB_REVERSE_IDLE:
	case PPB_EPP_IDLE:
	case PPB_ECP_FORWARD_IDLE:
	default:
		ppb_1284_terminate(ppbus);
		break;
	}
#endif /* PERIPH_1284 */

	/* unregistration of interrupt forced by release */
	FUNC5(ppbus, ppidev);
	FUNC6(ppbus);

	ppi->ppi_flags &= ~HAVE_PPBUS;
	FUNC8(&ppi->ppi_lock);

	return (0);
}