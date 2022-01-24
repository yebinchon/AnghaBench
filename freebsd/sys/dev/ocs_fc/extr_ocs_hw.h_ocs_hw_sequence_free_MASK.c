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
typedef  int /*<<< orphan*/  ocs_hw_t ;
typedef  int /*<<< orphan*/  ocs_hw_sequence_t ;
typedef  int /*<<< orphan*/  ocs_hw_rtn_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline ocs_hw_rtn_e
FUNC1(ocs_hw_t *hw, ocs_hw_sequence_t *seq)
{
	/* Only RQ pair mode is supported */
	return FUNC0(hw, seq);
}