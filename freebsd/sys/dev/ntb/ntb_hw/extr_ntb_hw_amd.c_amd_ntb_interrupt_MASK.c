#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct amd_ntb_softc {int /*<<< orphan*/  device; TYPE_1__* hw_info; } ;
struct TYPE_2__ {scalar_t__ db_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct amd_ntb_softc *ntb, uint16_t vec)
{
	if (vec < ntb->hw_info->db_count)
		FUNC1(ntb->device, vec);
	else
		FUNC0(0, "Invalid vector %d\n", vec);
}