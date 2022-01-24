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
struct CInvalidBuiltinData {int /*<<< orphan*/  mKind; int /*<<< orphan*/  mLocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CInvalidBuiltinData*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int LOCATION_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(bool isFatal, struct CInvalidBuiltinData *pData)
{
	char szLocation[LOCATION_MAXLEN];

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC2(szLocation, LOCATION_MAXLEN, &pData->mLocation);

	FUNC3(isFatal, "UBSan: Undefined Behavior in %s, passing zero to %s, which is not a valid argument\n",
	       szLocation, FUNC1(pData->mKind));
}