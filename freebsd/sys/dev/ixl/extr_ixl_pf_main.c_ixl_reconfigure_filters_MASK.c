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
struct ixl_vsi {int /*<<< orphan*/  num_macs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXL_FILTER_USED ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_vsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ixl_vsi *vsi)
{
	FUNC0(vsi, IXL_FILTER_USED, vsi->num_macs);
}