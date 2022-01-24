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
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  curstate ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_SOFT_ALLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_user_soft ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,size_t*,int*,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	int curstate;
	int on = 1;
	size_t cursize = sizeof(curstate);

	if (FUNC1(CRYPT_SOFT_ALLOW, &curstate, &cursize,
		&on, sizeof(on)) == 0) {
		if (curstate == 0)
			FUNC0(reset_user_soft);
	}
}