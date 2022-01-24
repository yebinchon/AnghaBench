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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct fxp_ident {scalar_t__ vendor; scalar_t__ device; int revid; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct fxp_ident* fxp_ident_table ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fxp_ident *
FUNC3(device_t dev)
{
	uint16_t vendor;
	uint16_t device;
	uint8_t revid;
	const struct fxp_ident *ident;

	vendor = FUNC2(dev);
	device = FUNC0(dev);
	revid = FUNC1(dev);
	for (ident = fxp_ident_table; ident->name != NULL; ident++) {
		if (ident->vendor == vendor && ident->device == device &&
		    (ident->revid == revid || ident->revid == -1)) {
			return (ident);
		}
	}
	return (NULL);
}