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
struct csession {struct csession* mackey; struct csession* key; int /*<<< orphan*/  lock; int /*<<< orphan*/  cses; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct csession*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct csession *cse)
{

	FUNC0(cse->cses);
	FUNC2(&cse->lock);
	if (cse->key)
		FUNC1(cse->key, M_XDATA);
	if (cse->mackey)
		FUNC1(cse->mackey, M_XDATA);
	FUNC1(cse, M_XDATA);
}