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
typedef  char* uintmax_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_B ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  hflag ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void
FUNC4(int64_t blocks)
{
	char buf[7];
	int flags;

	if (!hflag) {
		FUNC3(" %6ju", (uintmax_t)FUNC1(blocks));
		return;
	}
	flags = HN_NOSPACE | HN_DECIMAL;
	if (blocks != 0)
		flags |= HN_B;
	FUNC2(buf, sizeof(buf) - (blocks < 0 ? 0 : 1),
	    FUNC0(blocks), "", HN_AUTOSCALE, flags);
	(void)FUNC3("%7s", buf);
}