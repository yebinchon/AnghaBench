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
struct cdev {int /*<<< orphan*/  si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  agp_unbind ;
typedef  int /*<<< orphan*/  agp_setup ;
typedef  int /*<<< orphan*/  agp_info ;
typedef  int /*<<< orphan*/  agp_bind ;
typedef  int /*<<< orphan*/  agp_allocate ;

/* Variables and functions */
#define  AGPIOC_ACQUIRE 136 
#define  AGPIOC_ALLOCATE 135 
#define  AGPIOC_BIND 134 
#define  AGPIOC_CHIPSET_FLUSH 133 
#define  AGPIOC_DEALLOCATE 132 
#define  AGPIOC_INFO 131 
#define  AGPIOC_RELEASE 130 
#define  AGPIOC_SETUP 129 
#define  AGPIOC_UNBIND 128 
 int /*<<< orphan*/  AGP_ACQUIRE_USER ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct cdev *kdev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
	device_t dev = kdev->si_drv1;

	switch (cmd) {
	case AGPIOC_INFO:
		return FUNC5(dev, (agp_info *) data);

	case AGPIOC_ACQUIRE:
		return FUNC0(dev, AGP_ACQUIRE_USER);

	case AGPIOC_RELEASE:
		return FUNC6(dev, AGP_ACQUIRE_USER);

	case AGPIOC_SETUP:
		return FUNC7(dev, (agp_setup *)data);

	case AGPIOC_ALLOCATE:
		return FUNC1(dev, (agp_allocate *)data);

	case AGPIOC_DEALLOCATE:
		return FUNC4(dev, *(int *) data);

	case AGPIOC_BIND:
		return FUNC2(dev, (agp_bind *)data);

	case AGPIOC_UNBIND:
		return FUNC8(dev, (agp_unbind *)data);

	case AGPIOC_CHIPSET_FLUSH:
		return FUNC3(dev);
	}

	return EINVAL;
}