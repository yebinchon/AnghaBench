#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct CFloatCastOverflowData {TYPE_1__* mToType; TYPE_2__* mFromType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_4__ {int /*<<< orphan*/  mTypeName; } ;
struct TYPE_3__ {int /*<<< orphan*/  mTypeName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CFloatCastOverflowData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,TYPE_2__*,unsigned long) ; 
 int LOCATION_MAXLEN ; 
 int NUMBER_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(bool isFatal, struct CFloatCastOverflowData *pData, unsigned long ulFrom)
{
	char szLocation[LOCATION_MAXLEN];
	char szFrom[NUMBER_MAXLEN];

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);
	FUNC2(szLocation, szFrom, NUMBER_MAXLEN, pData->mFromType, ulFrom);

	FUNC3(isFatal, "UBSan: Undefined Behavior in %s, %s (of type %s) is outside the range of representable values of type %s\n",
	       szLocation, szFrom, pData->mFromType->mTypeName, pData->mToType->mTypeName);
}