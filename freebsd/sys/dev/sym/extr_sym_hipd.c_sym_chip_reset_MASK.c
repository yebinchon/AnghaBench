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
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  nc_istat ; 

__attribute__((used)) static void FUNC2 (hcb_p np)
{
	FUNC0 (nc_istat, SRST);
	FUNC1 (10);
	FUNC0 (nc_istat, 0);
	FUNC1(2000);	/* For BUS MODE to settle */
}