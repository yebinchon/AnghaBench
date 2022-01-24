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
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(KBDC kbdc, int res, int scale, int *status)
{
	if (FUNC1(kbdc, res) != res)
		return (FALSE);
	if (FUNC2(kbdc, scale) &&
	    FUNC2(kbdc, scale) &&
	    FUNC2(kbdc, scale) &&
	    (FUNC0(kbdc, status, 0, 3) >= 3))
		return (TRUE);
	return (FALSE);
}