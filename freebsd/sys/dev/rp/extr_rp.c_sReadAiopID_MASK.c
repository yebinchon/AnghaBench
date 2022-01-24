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
typedef  int /*<<< orphan*/  CONTROLLER_T ;
typedef  int Byte_t ;

/* Variables and functions */
 int RESET_ALL ; 
 int /*<<< orphan*/  _CHN_STAT0 ; 
 int /*<<< orphan*/  _CMD_REG ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

int FUNC2(CONTROLLER_T *CtlP, int aiop)
{
   Byte_t AiopID;		/* ID byte from AIOP */

   FUNC1(CtlP, aiop, _CMD_REG, RESET_ALL);     /* reset AIOP */
   FUNC1(CtlP, aiop, _CMD_REG, 0x0);
   AiopID = FUNC0(CtlP, aiop, _CHN_STAT0) & 0x07;
   if(AiopID == 0x06)
      return(1);
   else 			       /* AIOP does not exist */
      return(-1);
}