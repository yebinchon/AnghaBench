#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct CShiftOutOfBoundsData {TYPE_1__* mLHSType; TYPE_1__* mRHSType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_5__ {int /*<<< orphan*/  mTypeName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CShiftOutOfBoundsData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,TYPE_1__*,unsigned long) ; 
 int LOCATION_MAXLEN ; 
 int NUMBER_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC6 (char*,TYPE_1__*,unsigned long,char*) ; 
 char* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(bool isFatal, struct CShiftOutOfBoundsData *pData, unsigned long ulLHS, unsigned long ulRHS)
{
	char szLocation[LOCATION_MAXLEN];
	char szLHS[NUMBER_MAXLEN];
	char szRHS[NUMBER_MAXLEN];

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);
	FUNC2(szLocation, szLHS, NUMBER_MAXLEN, pData->mLHSType, ulLHS);
	FUNC2(szLocation, szRHS, NUMBER_MAXLEN, pData->mRHSType, ulRHS);

	if (FUNC5(szLocation, pData->mRHSType, ulRHS))
		FUNC3(isFatal, "UBSan: Undefined Behavior in %s, shift exponent %s is negative\n",
		       szLocation, szRHS);
	else if (FUNC6(szLocation, pData->mRHSType, ulRHS, FUNC7(pData->mLHSType)))
		FUNC3(isFatal, "UBSan: Undefined Behavior in %s, shift exponent %s is too large for %zu-bit type %s\n",
		       szLocation, szRHS, FUNC7(pData->mLHSType), pData->mLHSType->mTypeName);
	else if (FUNC5(szLocation, pData->mLHSType, ulLHS))
		FUNC3(isFatal, "UBSan: Undefined Behavior in %s, left shift of negative value %s\n",
		       szLocation, szLHS);
	else
		FUNC3(isFatal, "UBSan: Undefined Behavior in %s, left shift of %s by %s places cannot be represented in type %s\n",
		       szLocation, szLHS, szRHS, pData->mLHSType->mTypeName);
}