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
typedef  scalar_t__ uint64_t ;
struct timespec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*,struct timespec*,struct timespec*) ; 

uint64_t
FUNC2(struct timespec *b, struct timespec *a)
{
	uint64_t elapsed;
	struct timespec x;

	FUNC1(b, a, &x);
	elapsed = FUNC0(&x);
	if (elapsed == 0)
		elapsed++;
	return (elapsed);
}