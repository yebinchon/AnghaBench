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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 

__attribute__((used)) static void FUNC3(hcb_p np, union ccb *ccb, int cam_status)
{

	FUNC0(MA_OWNED);

	FUNC1(ccb, cam_status);
	FUNC2(ccb);
}