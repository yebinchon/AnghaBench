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
struct fdc_data {int flags; int /*<<< orphan*/  fdct; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FDC_NE765 ; 
 int FDC_NODMA ; 
 int FDC_NOFAST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fdc_data* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct fdc_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	int error;
	struct	fdc_data *fdc;
	device_t child;

	fdc = FUNC1(dev);
	fdc->flags = FDC_NODMA | FDC_NOFAST;
	fdc->fdct = FDC_NE765;
	error = FUNC5(dev, fdc);
	if (error == 0)
		error = FUNC4(dev);
	if (error == 0) {
		child = FUNC3(dev, "fd", -1);
		FUNC2(child, 0x24);
		error = FUNC0(dev);
	}
	if (error == 0)
		FUNC7(dev);
	else
		FUNC6(fdc);
	return (error);
}