#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int Word_t ;
struct TYPE_6__ {int* RxControl; int* TxControl; size_t ChanNum; } ;
typedef  TYPE_1__ CHANNEL_T ;
typedef  int Byte_t ;

/* Variables and functions */
 int CHANINT_EN ; 
 int MCINT_EN ; 
 int RXINT_EN ; 
 int SRCINT_EN ; 
 int TXINT_EN ; 
 int /*<<< orphan*/  _INDX_ADDR ; 
 int /*<<< orphan*/  _INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int* rp_sBitMapSetTbl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(CHANNEL_T *ChP,Word_t Flags)
{
   Byte_t Mask; 		/* Interrupt Mask Register */

   ChP->RxControl[2] |=
      ((Byte_t)Flags & (RXINT_EN | SRCINT_EN | MCINT_EN));

   FUNC3(ChP,_INDX_ADDR,FUNC0(ChP->RxControl));

   ChP->TxControl[2] |= ((Byte_t)Flags & TXINT_EN);

   FUNC3(ChP,_INDX_ADDR,FUNC0(ChP->TxControl));

   if(Flags & CHANINT_EN)
   {
      Mask = FUNC1(ChP,_INT_MASK) | rp_sBitMapSetTbl[ChP->ChanNum];
      FUNC2(ChP,_INT_MASK,Mask);
   }
}