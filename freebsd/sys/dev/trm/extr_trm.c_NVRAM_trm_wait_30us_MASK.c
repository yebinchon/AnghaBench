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
typedef  int /*<<< orphan*/  PACB ;

/* Variables and functions */
 int GTIMEOUT ; 
 int /*<<< orphan*/  TRMREG_GEN_STATUS ; 
 int /*<<< orphan*/  TRMREG_GEN_TIMER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(PACB pACB)
{
  
	/*    ScsiPortStallExecution(30);	 wait 30 us	*/
	FUNC1(5, TRMREG_GEN_TIMER);
	while (!(FUNC0(TRMREG_GEN_STATUS) & GTIMEOUT));
	return;
}