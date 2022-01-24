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
struct CUnreachableData {int /*<<< orphan*/  mLocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CUnreachableData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int LOCATION_MAXLEN ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(bool isFatal, struct CUnreachableData *pData)
{
	char szLocation[LOCATION_MAXLEN];

	FUNC0(pData);

	if (FUNC3(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);

	FUNC2(isFatal, "UBSan: Undefined Behavior in %s, calling __builtin_unreachable()\n",
	       szLocation);
}