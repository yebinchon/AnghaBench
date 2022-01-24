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
struct ecore_credit_pool_obj {int /*<<< orphan*/  credit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ecore_credit_pool_obj *o, int cnt)
{
	bool rc;

	FUNC0();
	rc = FUNC1(&o->credit, cnt, 0);
	FUNC0();

	return rc;
}