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
struct ixl_vsi {int /*<<< orphan*/  ftl; } ;
struct ixl_mac_filter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ixl_mac_filter* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_mac_filter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

void
FUNC4(struct ixl_vsi *vsi)
{
	struct ixl_mac_filter *f;

	while (!FUNC0(&vsi->ftl)) {
		f = FUNC1(&vsi->ftl);
		FUNC2(&vsi->ftl, next);
		FUNC3(f, M_DEVBUF);
	}
}