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
struct fdc_ivars {int fdunit; int /*<<< orphan*/  fdtype; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FDT_NONE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct fdc_ivars*) ; 
 int /*<<< orphan*/  FUNC3 (struct fdc_ivars*,int /*<<< orphan*/ ) ; 
 struct fdc_ivars* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,int) ; 

device_t
FUNC6(device_t dev, const char *name, int unit)
{
	struct fdc_ivars *ivar;
	device_t child;

	ivar = FUNC4(sizeof *ivar, M_DEVBUF /* XXX */, M_NOWAIT | M_ZERO);
	if (ivar == NULL)
		return (NULL);
	child = FUNC0(dev, name, unit);
	if (child == NULL) {
		FUNC3(ivar, M_DEVBUF);
		return (NULL);
	}
	FUNC2(child, ivar);
	ivar->fdunit = unit;
	ivar->fdtype = FDT_NONE;
	if (FUNC5(name, unit))
		FUNC1(child);
	return (child);
}