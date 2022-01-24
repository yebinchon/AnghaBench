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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  M_NFSSTRING ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int siz, u_char **cpp, u_char **cpp2, int *slenp)
{
	u_char *cp;
	int i;

	if (siz <= *slenp)
		return;
	cp = FUNC2(siz + 1024, M_NFSSTRING, M_WAITOK);
	FUNC0(*cpp, cp, *slenp);
	FUNC1(*cpp, M_NFSSTRING);
	i = *cpp2 - *cpp;
	*cpp = cp;
	*cpp2 = cp + i;
	*slenp = siz + 1024;
}