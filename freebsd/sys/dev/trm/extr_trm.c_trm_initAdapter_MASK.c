#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  size_t u_int16_t ;
struct TYPE_6__ {int Config; } ;
struct TYPE_5__ {int NvramChannelCfg; int NvramScsiId; } ;
typedef  TYPE_1__* PNVRAMTYPE ;
typedef  TYPE_2__* PACB ;

/* Variables and functions */
 int BLOCKRST ; 
 int DMA_ENHANCE ; 
 size_t DO_RSTMODULE ; 
 int EN_SCSIINTR ; 
 int HCC_AUTOTERM ; 
 int HCC_PARITY ; 
 int HCC_SCSI_RESET ; 
 int HCC_WIDE_CARD ; 
 int INITIATOR ; 
 int NAC_POWERON_SCSI_RESET ; 
 int PARITYCHECK ; 
 int PHASELATCH ; 
 int SEL_TIMEOUT ; 
 int /*<<< orphan*/  TRMREG_DMA_CONFIG ; 
 int /*<<< orphan*/  TRMREG_DMA_INTEN ; 
 int /*<<< orphan*/  TRMREG_GEN_CONTROL ; 
 int /*<<< orphan*/  TRMREG_GEN_STATUS ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONFIG0 ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONFIG1 ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_HOSTID ; 
 int /*<<< orphan*/  TRMREG_SCSI_INTEN ; 
 int /*<<< orphan*/  TRMREG_SCSI_INTSTATUS ; 
 int /*<<< orphan*/  TRMREG_SCSI_OFFSET ; 
 int /*<<< orphan*/  TRMREG_SCSI_TIMEOUT ; 
 int WIDESCSI ; 
 TYPE_1__* trm_eepromBuf ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(PACB pACB, u_int16_t unit)
{
	PNVRAMTYPE	pEEpromBuf;
	u_int16_t	wval;
	u_int8_t	bval;

	pEEpromBuf = &trm_eepromBuf[unit];

	/* 250ms selection timeout */
	FUNC3(SEL_TIMEOUT, TRMREG_SCSI_TIMEOUT);
	/* Mask all the interrupt */
	FUNC3(0x00, TRMREG_DMA_INTEN);    
	FUNC3(0x00, TRMREG_SCSI_INTEN);     
	/* Reset SCSI module */
	FUNC2(DO_RSTMODULE, TRMREG_SCSI_CONTROL); 
	/* program configuration 0 */
	pACB->Config = HCC_AUTOTERM | HCC_PARITY;
	if (FUNC1(TRMREG_GEN_STATUS) & WIDESCSI)
		pACB->Config |= HCC_WIDE_CARD;
	if (pEEpromBuf->NvramChannelCfg & NAC_POWERON_SCSI_RESET)
		pACB->Config |= HCC_SCSI_RESET;
	if (pACB->Config & HCC_PARITY)
		bval = PHASELATCH | INITIATOR | BLOCKRST | PARITYCHECK;
	else
		bval = PHASELATCH | INITIATOR | BLOCKRST ;
	FUNC3(bval,TRMREG_SCSI_CONFIG0); 
	/* program configuration 1 */
	FUNC3(0x13, TRMREG_SCSI_CONFIG1); 
	/* program Host ID */
	bval = pEEpromBuf->NvramScsiId;
	FUNC3(bval, TRMREG_SCSI_HOSTID); 
	/* set ansynchronous transfer */
	FUNC3(0x00, TRMREG_SCSI_OFFSET); 
	/* Trun LED control off*/
	wval = FUNC0(TRMREG_GEN_CONTROL) & 0x7F;
	FUNC2(wval, TRMREG_GEN_CONTROL); 
	/* DMA config */
	wval = FUNC0(TRMREG_DMA_CONFIG) | DMA_ENHANCE;
	FUNC2(wval, TRMREG_DMA_CONFIG); 
	/* Clear pending interrupt status */
	FUNC1(TRMREG_SCSI_INTSTATUS);
	/* Enable SCSI interrupt */
	FUNC3(0x7F, TRMREG_SCSI_INTEN); 
	FUNC3(EN_SCSIINTR, TRMREG_DMA_INTEN); 
	return (0);
}