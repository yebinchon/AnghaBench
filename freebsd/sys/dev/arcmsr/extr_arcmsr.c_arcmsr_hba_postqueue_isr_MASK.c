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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct AdapterControlBlock {int /*<<< orphan*/  srb_dmamap; int /*<<< orphan*/  srb_dmat; } ;

/* Variables and functions */
 int ARCMSR_SRBREPLY_FLAG_ERROR_MODE0 ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HBA_MessageUnit ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outbound_queueport ; 

__attribute__((used)) static void FUNC3(struct AdapterControlBlock *acb)
{
	u_int32_t flag_srb;
	u_int16_t error;

	/*
	*****************************************************************************
	**               areca cdb command done
	*****************************************************************************
	*/
	FUNC2(acb->srb_dmat, acb->srb_dmamap, 
		BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
	while((flag_srb = FUNC0(HBA_MessageUnit, 
		0, outbound_queueport)) != 0xFFFFFFFF) {
		/* check if command done with no error*/
	error = (flag_srb & ARCMSR_SRBREPLY_FLAG_ERROR_MODE0) ? TRUE : FALSE;
		FUNC1(acb, flag_srb, error);
	}	/*drain reply FIFO*/
}