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
struct CCFICheckFailData {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct CCFICheckFailData*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct CCFICheckFailData*,unsigned long,int*,int*,unsigned long*,unsigned long*) ; 

void
FUNC2(struct CCFICheckFailData *pData, unsigned long ulVtable, bool bValidVtable, bool FromUnrecoverableHandler, unsigned long ProgramCounter, unsigned long FramePointer)
{

	FUNC0(pData);

	FUNC1(false, pData, ulVtable, &bValidVtable, &FromUnrecoverableHandler, &ProgramCounter, &FramePointer);
}