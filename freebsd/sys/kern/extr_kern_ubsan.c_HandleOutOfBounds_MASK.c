#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct COutOfBoundsData {TYPE_1__* mArrayType; int /*<<< orphan*/  mIndexType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_2__ {int /*<<< orphan*/  mTypeName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct COutOfBoundsData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int /*<<< orphan*/ ,unsigned long) ; 
 int LOCATION_MAXLEN ; 
 int NUMBER_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(bool isFatal, struct COutOfBoundsData *pData, unsigned long ulIndex)
{
	char szLocation[LOCATION_MAXLEN];
	char szIndex[NUMBER_MAXLEN];

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);
	FUNC2(szLocation, szIndex, NUMBER_MAXLEN, pData->mIndexType, ulIndex);

	FUNC3(isFatal, "UBSan: Undefined Behavior in %s, index %s is out of range for type %s\n",
	       szLocation, szIndex, pData->mArrayType->mTypeName);
}