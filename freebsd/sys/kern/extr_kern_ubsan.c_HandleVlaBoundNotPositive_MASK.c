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
struct CVLABoundData {int /*<<< orphan*/  mType; int /*<<< orphan*/  mLocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CVLABoundData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int LOCATION_MAXLEN ; 
 int NUMBER_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(bool isFatal, struct CVLABoundData *pData, unsigned long ulBound)
{
	char szLocation[LOCATION_MAXLEN];
	char szBound[NUMBER_MAXLEN];

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);
	FUNC2(szLocation, szBound, NUMBER_MAXLEN, pData->mType, ulBound);

	FUNC3(isFatal, "UBSan: Undefined Behavior in %s, variable length array bound value %s <= 0\n",
	       szLocation, szBound);
}