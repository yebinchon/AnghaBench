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
struct ppi_data {int ppi_flags; int /*<<< orphan*/  ppi_lock; int /*<<< orphan*/  ppi_device; } ;
struct cdev {struct ppi_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HAVE_PPBUS ; 
 int O_NONBLOCK ; 
 int PPB_DONTWAIT ; 
 int PPB_INTR ; 
 int PPB_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct ppi_data *ppi = dev->si_drv1;
	device_t ppidev = ppi->ppi_device;
	device_t ppbus = FUNC0(ppidev);
	int res;

	FUNC4(&ppi->ppi_lock);
	if (!(ppi->ppi_flags & HAVE_PPBUS)) {
		FUNC1(ppbus);
		res = FUNC2(ppbus, ppidev,
		    (flags & O_NONBLOCK) ? PPB_DONTWAIT : PPB_WAIT | PPB_INTR);
		FUNC3(ppbus);
		if (res) {
			FUNC5(&ppi->ppi_lock);
			return (res);
		}

		ppi->ppi_flags |= HAVE_PPBUS;
	}
	FUNC5(&ppi->ppi_lock);

	return (0);
}