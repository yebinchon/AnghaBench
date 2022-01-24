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
 struct fdc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct	fdc_data *fdc;
	int error;

	fdc = FUNC0(dev);
	fdc->fdc_dev = dev;
	error = FUNC3(dev, fdc);
	if (error == 0)
		error = FUNC1(dev);
	if (error == 0)
		error = FUNC2(dev);
	if (error == 0)
		FUNC5(dev);
	else
		FUNC4(fdc);
	return (error);
}