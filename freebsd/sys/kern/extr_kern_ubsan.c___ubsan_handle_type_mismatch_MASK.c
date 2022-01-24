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
struct CTypeMismatchData {int /*<<< orphan*/  mTypeCheckKind; int /*<<< orphan*/  mLogAlignment; int /*<<< orphan*/  mType; int /*<<< orphan*/  mLocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CTypeMismatchData*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

void
FUNC2(struct CTypeMismatchData *pData, unsigned long ulPointer)
{

	FUNC0(pData);

	FUNC1(false, &pData->mLocation, pData->mType, pData->mLogAlignment, pData->mTypeCheckKind, ulPointer);
}