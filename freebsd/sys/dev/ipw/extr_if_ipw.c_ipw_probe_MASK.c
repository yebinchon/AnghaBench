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
struct ipw_ident {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipw_ident* ipw_ident_table ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const struct ipw_ident *ident;

	for (ident = ipw_ident_table; ident->name != NULL; ident++) {
		if (FUNC2(dev) == ident->vendor &&
		    FUNC1(dev) == ident->device) {
			FUNC0(dev, ident->name);
			return (BUS_PROBE_DEFAULT);
		}
	}
	return ENXIO;
}