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
struct fdc_ivars {uintptr_t fdunit; uintptr_t fdtype; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
#define  FDC_IVAR_FDTYPE 129 
#define  FDC_IVAR_FDUNIT 128 
 struct fdc_ivars* FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(device_t dev, device_t child, int which, uintptr_t *result)
{
	struct fdc_ivars *ivars = FUNC0(child);

	switch (which) {
	case FDC_IVAR_FDUNIT:
		*result = ivars->fdunit;
		break;
	case FDC_IVAR_FDTYPE:
		*result = ivars->fdtype;
		break;
	default:
		return (ENOENT);
	}
	return (0);
}