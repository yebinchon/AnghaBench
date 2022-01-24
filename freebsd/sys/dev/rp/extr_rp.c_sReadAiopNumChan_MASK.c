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
typedef  scalar_t__ Word_t ;
typedef  int /*<<< orphan*/  CONTROLLER_T ;

/* Variables and functions */
 int /*<<< orphan*/  _INDX_ADDR ; 
 int /*<<< orphan*/  _INDX_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

int FUNC3(CONTROLLER_T *CtlP, int aiop)
{
   Word_t x, y;

   FUNC2(CtlP, aiop, _INDX_ADDR,0x12340000L); /* write to chan 0 SRAM */
   FUNC1(CtlP, aiop, _INDX_ADDR,0);	   /* read from SRAM, chan 0 */
   x = FUNC0(CtlP, aiop, _INDX_DATA);
   FUNC1(CtlP, aiop, _INDX_ADDR,0x4000);  /* read from SRAM, chan 4 */
   y = FUNC0(CtlP, aiop, _INDX_DATA);
   if(x != y)  /* if different must be 8 chan */
      return(8);
   else
      return(4);
}