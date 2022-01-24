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
struct CCFICheckFailData {scalar_t__ mCheckKind; TYPE_1__* mType; int /*<<< orphan*/  mLocation; } ;
struct TYPE_2__ {int /*<<< orphan*/  mTypeName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CCFICheckFailData*) ; 
 scalar_t__ CFI_ICALL ; 
 scalar_t__ CFI_VMFCALL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int LOCATION_MAXLEN ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(bool isFatal, struct CCFICheckFailData *pData, unsigned long ulVtable, bool *bValidVtable, bool *FromUnrecoverableHandler, unsigned long *ProgramCounter, unsigned long *FramePointer)
{
	char szLocation[LOCATION_MAXLEN];

	/*
	 * This is a minimal implementation without diving into C++
	 * specifics and (Itanium) ABI deserialization.
	 */

	FUNC0(pData);

	if (FUNC4(&pData->mLocation))
		return;

	FUNC2(szLocation, LOCATION_MAXLEN, &pData->mLocation);

	if (pData->mCheckKind == CFI_ICALL || pData->mCheckKind == CFI_VMFCALL) {
		FUNC3(isFatal, "UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx)\n",
		      szLocation, pData->mType->mTypeName, FUNC1(pData->mCheckKind), ulVtable);
	} else {
		FUNC3(isFatal || FromUnrecoverableHandler, "UBSan: Undefined Behavior in %s, control flow integrity check for type %s failed during %s (vtable address %#lx; %s vtable; from %s handler; Program Counter %#lx; Frame Pointer %#lx)\n",
		      szLocation, pData->mType->mTypeName, FUNC1(pData->mCheckKind), ulVtable, *bValidVtable ? "valid" : "invalid", *FromUnrecoverableHandler ? "unrecoverable" : "recoverable", *ProgramCounter, *FramePointer);
	}
}