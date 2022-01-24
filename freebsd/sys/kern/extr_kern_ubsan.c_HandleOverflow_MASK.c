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
struct COverflowData {TYPE_1__* mType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_2__ {int /*<<< orphan*/  mTypeName; int /*<<< orphan*/  mTypeInfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct COverflowData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LOCATION_MAXLEN ; 
 int NUMBER_MAXLEN ; 
 int /*<<< orphan*/  NUMBER_SIGNED_BIT ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*,char*,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(bool isFatal, struct COverflowData *pData, unsigned long ulLHS, unsigned long ulRHS, const char *szOperation)
{
	char szLocation[LOCATION_MAXLEN];
	char szLHS[NUMBER_MAXLEN];
	char szRHS[NUMBER_MAXLEN];

	FUNC0(pData);

	if (FUNC5(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);
	FUNC2(szLocation, szLHS, NUMBER_MAXLEN, pData->mType, ulLHS);
	FUNC2(szLocation, szRHS, NUMBER_MAXLEN, pData->mType, ulRHS);

	FUNC4(isFatal, "UBSan: Undefined Behavior in %s, %s integer overflow: %s %s %s cannot be represented in type %s\n",
	       szLocation, FUNC3(pData->mType->mTypeInfo, NUMBER_SIGNED_BIT) ? "signed" : "unsigned", szLHS, szOperation, szRHS, pData->mType->mTypeName);
}