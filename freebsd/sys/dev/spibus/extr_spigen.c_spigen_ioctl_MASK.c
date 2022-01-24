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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct spigen_transfer_mmapped {int dummy; } ;
struct spigen_transfer {int dummy; } ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
#define  SPIGENIOC_GET_CLOCK_SPEED 133 
#define  SPIGENIOC_GET_SPI_MODE 132 
#define  SPIGENIOC_SET_CLOCK_SPEED 131 
#define  SPIGENIOC_SET_SPI_MODE 130 
#define  SPIGENIOC_TRANSFER 129 
#define  SPIGENIOC_TRANSFER_MMAPPED 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cdev*,struct spigen_transfer*) ; 
 int FUNC5 (struct cdev*,struct spigen_transfer_mmapped*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *cdev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
	device_t dev = cdev->si_drv1;
	int error;

	switch (cmd) {
	case SPIGENIOC_TRANSFER:
		error = FUNC4(cdev, (struct spigen_transfer *)data);
		break;
	case SPIGENIOC_TRANSFER_MMAPPED:
		error = FUNC5(cdev, (struct spigen_transfer_mmapped *)data);
		break;
	case SPIGENIOC_GET_CLOCK_SPEED:
		error = FUNC0(dev, (uint32_t *)data);
		break;
	case SPIGENIOC_SET_CLOCK_SPEED:
		error = FUNC2(dev, *(uint32_t *)data);
		break;
	case SPIGENIOC_GET_SPI_MODE:
		error = FUNC1(dev, (uint32_t *)data);
		break;
	case SPIGENIOC_SET_SPI_MODE:
		error = FUNC3(dev, *(uint32_t *)data);
		break;
	default:
		error = ENOTTY;
		break;
	}
	return (error);
}