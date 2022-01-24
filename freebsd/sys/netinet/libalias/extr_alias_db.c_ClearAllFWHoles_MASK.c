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
struct libalias {scalar_t__ fireWallFD; int fireWallBaseNum; int fireWallNumNums; struct ip_fw* fireWallField; } ;
struct ip_fw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_FW_DEL ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void
FUNC2(struct libalias *la)
{
	struct ip_fw rule;	/* On-the-fly built rule */
	int i;

	if (la->fireWallFD < 0)
		return;

	FUNC0(&rule, 0, sizeof rule);
	for (i = la->fireWallBaseNum; i < la->fireWallBaseNum + la->fireWallNumNums; i++) {
		int r = i;

		while (!FUNC1(la->fireWallFD, IPPROTO_IP, IP_FW_DEL, &r, sizeof r));
	}
	/* XXX: third arg correct here ? /phk */
	FUNC0(la->fireWallField, 0, la->fireWallNumNums);
}