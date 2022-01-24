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
typedef  int uint32_t ;
struct statistic {int index; char* desc; } ;
typedef  int /*<<< orphan*/  stats ;
typedef  int /*<<< orphan*/  oid ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char const*,char*,int*) ; 
 int FUNC5 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct statistic* tbl ; 

__attribute__((used)) static void
FUNC6(const char *iface)
{
	static uint32_t stats[256];
	const struct statistic *stat;
	char oid[32];
	size_t len;
	int ifaceno;

	if (FUNC4(iface, "iwi%u", &ifaceno) != 1)
		FUNC1(EX_DATAERR, "Invalid interface name '%s'", iface);

	len = sizeof(stats);
	(void)FUNC3(oid, sizeof(oid), "dev.iwi.%u.stats", ifaceno);
	if (FUNC5(oid, stats, &len, NULL, 0) == -1)
		FUNC0(EX_OSERR, "Can't retrieve statistics");

	for (stat = tbl; stat->index != -1; stat++)
		(void)FUNC2("%-60s[%u]\n", stat->desc, stats[stat->index]);
}