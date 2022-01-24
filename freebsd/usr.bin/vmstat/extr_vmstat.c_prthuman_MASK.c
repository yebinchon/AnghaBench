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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int HN_DECIMAL ; 
 int HN_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

__attribute__((used)) static void
FUNC5(const char *name, uint64_t val, int size, int flags)
{
	char buf[10];
	char fmt[128];

	FUNC1(fmt, sizeof(fmt), "{:%s/%%*s}", name);

	if (size < 5 || size > 9)
		FUNC4(1, "doofus");
	flags |= HN_NOSPACE | HN_DECIMAL;
	FUNC0(buf, size, val, "", HN_AUTOSCALE, flags);
	FUNC2("value", "%ju", (uintmax_t) val);
	FUNC3(fmt, size, buf);
}