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
struct abs_timeout {int /*<<< orphan*/  cur; int /*<<< orphan*/  clockid; } ;

/* Variables and functions */
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC1(struct abs_timeout *timo)
{

	FUNC0(curthread, timo->clockid, &timo->cur);
}