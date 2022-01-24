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
struct timeval {scalar_t__ tv_sec; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC1(int32_t tval)
{
	static struct timeval	last = { 0, 0 };
	struct timeval		now;

	FUNC0(&now, NULL);

	if (now.tv_sec - last.tv_sec >= tval) {
		last = now;
		return (1);
	}

	return (0);
}