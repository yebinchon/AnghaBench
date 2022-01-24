#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
typedef  TYPE_1__ ocs_hw_sequence_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC1(ocs_hw_sequence_t *dst, ocs_hw_sequence_t *src)
{
	/* Copy the src to dst, then zero out the linked list link */
	*dst = *src;
	FUNC0(&dst->link, 0, sizeof(dst->link));
}