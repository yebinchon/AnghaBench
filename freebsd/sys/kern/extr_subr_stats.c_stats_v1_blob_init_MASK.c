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
typedef  scalar_t__ uint32_t ;
struct statsblobv1 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ntpl ; 
 int FUNC2 (struct statsblobv1*,scalar_t__,scalar_t__) ; 

int
FUNC3(struct statsblobv1 *sb, uint32_t tpl_id, uint32_t flags)
{
	int error;

	error = 0;

	FUNC0();
	if (sb == NULL || tpl_id >= ntpl) {
		error = EINVAL;
	} else {
		error = FUNC2(sb, tpl_id, flags);
	}
	FUNC1();

	return (error);
}