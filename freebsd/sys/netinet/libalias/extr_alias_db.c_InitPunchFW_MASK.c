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
struct libalias {scalar_t__ fireWallFD; int /*<<< orphan*/  fireWallBaseNum; int /*<<< orphan*/  fireWallActiveNum; int /*<<< orphan*/  fireWallNumNums; scalar_t__ fireWallField; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int /*<<< orphan*/  IPPROTO_RAW ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct libalias *la)
{

	la->fireWallField = FUNC1(la->fireWallNumNums);
	if (la->fireWallField) {
		FUNC2(la->fireWallField, 0, la->fireWallNumNums);
		if (la->fireWallFD < 0) {
			la->fireWallFD = FUNC3(AF_INET, SOCK_RAW, IPPROTO_RAW);
		}
		FUNC0(la);
		la->fireWallActiveNum = la->fireWallBaseNum;
	}
}