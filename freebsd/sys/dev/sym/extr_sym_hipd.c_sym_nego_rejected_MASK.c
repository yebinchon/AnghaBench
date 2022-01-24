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
typedef  int /*<<< orphan*/  tcb_p ;
typedef  int /*<<< orphan*/  hcb_p ;
typedef  int /*<<< orphan*/  ccb_p ;

/* Variables and functions */
 int /*<<< orphan*/  HS_BUSY ; 
 int /*<<< orphan*/  HS_PRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(hcb_p np, tcb_p tp, ccb_p cp)
{
	FUNC1(np, tp, cp);
	FUNC0 (HS_PRT, HS_BUSY);
}