#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* TxControl; int /*<<< orphan*/  TxFIFOPtrs; } ;
typedef  TYPE_1__ CHANNEL_T ;
typedef  int Byte_t ;

/* Variables and functions */
 int FALSE ; 
 int RESTXFCNT ; 
 int TRUE ; 
 int TX_ENABLE ; 
 int /*<<< orphan*/  _CMD_REG ; 
 int /*<<< orphan*/  _INDX_ADDR ; 
 int /*<<< orphan*/  _INDX_DATA ; 
 int /*<<< orphan*/  _INT_CHAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(CHANNEL_T *ChP)
{
   int i;
   Byte_t Ch;			/* channel number within AIOP */
   int TxEnabled;		       /* TRUE if transmitter enabled */

   if(FUNC6(ChP) == 0)	       /* Tx FIFO empty */
      return;			       /* don't need to flush */

   TxEnabled = FALSE;
   if(ChP->TxControl[3] & TX_ENABLE)
   {
      TxEnabled = TRUE;
      FUNC3(ChP);	       /* disable transmitter */
   }
   FUNC8(ChP);	       /* stop Rx processor */
   for(i = 0; i < 4000/200; i++)	 /* delay 4 uS to allow proc to stop */
      FUNC0(ChP,_INT_CHAN);	/* depends on bus i/o timing */
   Ch = (Byte_t)FUNC5(ChP);
   FUNC1(ChP,_CMD_REG,Ch | RESTXFCNT);     /* apply reset Tx FIFO count */
   FUNC1(ChP,_CMD_REG,Ch);		       /* remove reset Tx FIFO count */
   FUNC2(ChP,_INDX_ADDR,ChP->TxFIFOPtrs); /* clear Tx in/out ptrs */
   FUNC2(ChP,_INDX_DATA,0);
   if(TxEnabled)
      FUNC4(ChP); 	       /* enable transmitter */
   FUNC7(ChP);	       /* restart Rx processor */
}