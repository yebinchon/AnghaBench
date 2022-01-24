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
struct fdc_data {int /*<<< orphan*/  fdc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct fdc_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdc_ids ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct fdc_data*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int	error;
	struct	fdc_data *fdc;

	fdc = FUNC2(dev);
	fdc->fdc_dev = dev;

	/* Check pnp ids */
	error = FUNC0(FUNC1(dev), dev, fdc_ids);
	if (error == ENXIO)
		return (ENXIO);

	/* Attempt to allocate our resources for the duration of the probe */
	error = FUNC4(dev, fdc);
	if (error == 0)
		error = FUNC3(dev, fdc);

	FUNC5(fdc);
	return (error);
}