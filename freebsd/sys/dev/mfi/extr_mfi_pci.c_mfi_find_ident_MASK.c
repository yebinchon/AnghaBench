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
struct mfi_ident {scalar_t__ vendor; scalar_t__ device; int subvendor; int subdevice; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mfi_ident* mfi_identifiers ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mfi_ident *
FUNC4(device_t dev)
{
	struct mfi_ident *m;

	for (m = mfi_identifiers; m->vendor != 0; m++) {
		if ((m->vendor == FUNC3(dev)) &&
		    (m->device == FUNC0(dev)) &&
		    ((m->subvendor == FUNC2(dev)) ||
		    (m->subvendor == 0xffff)) &&
		    ((m->subdevice == FUNC1(dev)) ||
		    (m->subdevice == 0xffff)))
			return (m);
	}

	return (NULL);
}