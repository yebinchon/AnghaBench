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
struct TYPE_2__ {scalar_t__ phys_id; } ;
struct bnxt_cp_ring {TYPE_1__ ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ HWRM_NA_SIGNATURE ; 

__attribute__((used)) static void inline
FUNC1(struct bnxt_cp_ring *cpr)
{
	if (cpr->ring.phys_id != (uint16_t)HWRM_NA_SIGNATURE)
		FUNC0(&cpr->ring);
}