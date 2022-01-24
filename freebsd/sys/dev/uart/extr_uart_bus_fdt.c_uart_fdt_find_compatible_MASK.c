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
struct ofw_compat_data {int /*<<< orphan*/ * ocd_str; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct ofw_compat_data *
FUNC1(phandle_t node, const struct ofw_compat_data *cd)
{
	const struct ofw_compat_data *ocd;

	for (ocd = cd; ocd->ocd_str != NULL; ocd++) {
		if (FUNC0(node, ocd->ocd_str))
			return (ocd);
	}
	return (NULL);
}