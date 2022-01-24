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
struct feed_eq_info {int /*<<< orphan*/ * coeff; int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct feed_eq_info*) ; 

__attribute__((used)) static int
FUNC2(struct feed_eq_info *info)
{

	info->coeff = FUNC0(info->rate);
	if (info->coeff == NULL)
		return (EINVAL);

	FUNC1(info);

	return (0);
}