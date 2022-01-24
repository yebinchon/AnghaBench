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
struct taskqgroup {int /*<<< orphan*/  tqg_lock; } ;

/* Variables and functions */
 int FUNC0 (struct taskqgroup*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(struct taskqgroup *qgroup, int cnt, int stride)
{
	int error;

	FUNC1(&qgroup->tqg_lock);
	error = FUNC0(qgroup, cnt, stride);
	FUNC2(&qgroup->tqg_lock);

	return (error);
}