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
struct statistic {scalar_t__ index; char* desc; int unit; } ;

/* Variables and functions */
#define  BOOL 131 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_OSERR ; 
#define  HEX 130 
#define  INT 129 
#define  PERCENTAGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char const*,char*,int*) ; 
 int FUNC5 (char*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct statistic* tbl ; 

__attribute__((used)) static void
FUNC6(const char *iface)
{
	static uint32_t stats[256];
	const struct statistic *stat;
	char oid[32];
	int ifaceno, len;

	if (FUNC4(iface, "ipw%u", &ifaceno) != 1)
		FUNC1(EX_DATAERR, "Invalid interface name '%s'", iface);

	len = sizeof stats;
	FUNC3(oid, sizeof oid, "dev.ipw.%u.stats", ifaceno);
	if (FUNC5(oid, stats, &len, NULL, 0) == -1)
		FUNC0(EX_OSERR, "Can't retrieve statistics");

	for (stat = tbl; stat->index != 0; stat++) {
		FUNC2("%-60s[", stat->desc);
		switch (stat->unit) {
		case INT:
			FUNC2("%u", stats[stat->index]);
			break;
		case BOOL:
			FUNC2(stats[stat->index] ? "true" : "false");
			break;
		case PERCENTAGE:
			FUNC2("%u%%", stats[stat->index]);
			break;
		case HEX:
		default:
			FUNC2("0x%08X", stats[stat->index]);
		}
		FUNC2("]\n");
	}
}