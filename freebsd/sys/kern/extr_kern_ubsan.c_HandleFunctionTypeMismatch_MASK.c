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
struct CFunctionTypeMismatchData {TYPE_1__* mType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_2__ {int /*<<< orphan*/  mTypeName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CFunctionTypeMismatchData*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int LOCATION_MAXLEN ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(bool isFatal, struct CFunctionTypeMismatchData *pData, unsigned long ulFunction)
{
	char szLocation[LOCATION_MAXLEN];

	/*
	 * There is no a portable C solution to translate an address of a
	 * function to its name. On the cost of getting this routine simple
	 * and portable without ifdefs between the userland and the kernel
	 * just print the address of the function as-is.
	 *
	 * For better diagnostic messages in the userland, users shall use
	 * the full upstream version shipped along with the compiler toolchain.
	 */

	FUNC0(pData);

	if (FUNC3(&pData->mLocation))
		return;

	FUNC1(szLocation, LOCATION_MAXLEN, &pData->mLocation);

	FUNC2(isFatal, "UBSan: Undefined Behavior in %s, call to function %#lx through pointer to incorrect function type %s\n",
	      szLocation, ulFunction, pData->mType->mTypeName);
}