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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  numbuf ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

char *
FUNC4(int64_t blocks)
{
	static char numbuf[20];

	if (hflag) {
		FUNC2(numbuf, blocks < 0 ? 7 : 6,
		    FUNC0(blocks), "", HN_AUTOSCALE, HN_NOSPACE);
		return (numbuf);
	}
	FUNC3(numbuf, sizeof(numbuf), "%juk", (uintmax_t)FUNC1(blocks));
	return(numbuf);
}