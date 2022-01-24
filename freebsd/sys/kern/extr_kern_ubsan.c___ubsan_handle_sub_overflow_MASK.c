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
struct COverflowData {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct COverflowData*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct COverflowData*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MINUS_STRING ; 

void
FUNC2(struct COverflowData *pData, unsigned long ulLHS, unsigned long ulRHS)
{

	FUNC0(pData);

	FUNC1(false, pData, ulLHS, ulRHS, MINUS_STRING);
}