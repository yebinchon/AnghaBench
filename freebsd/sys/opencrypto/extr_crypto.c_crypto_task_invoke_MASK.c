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
struct cryptop {int /*<<< orphan*/  crp_session; } ;
struct cryptocap {int dummy; } ;

/* Variables and functions */
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (struct cryptop*) ; 
 struct cryptocap* FUNC1 (int) ; 
 int FUNC2 (struct cryptocap*,struct cryptop*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *ctx, int pending)
{
	struct cryptocap *cap;
	struct cryptop *crp;
	int hid, result;

	crp = (struct cryptop *)ctx;

	hid = FUNC3(crp->crp_session);
	cap = FUNC1(hid);

	result = FUNC2(cap, crp, 0);
	if (result == ERESTART)
		FUNC0(crp);
}