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
typedef  int TW_UINT32 ;
typedef  int /*<<< orphan*/  TW_INT8 ;

/* Variables and functions */
 int TWA_STATUS_ATTENTION_INTERRUPT ; 
 int TWA_STATUS_COMMAND_INTERRUPT ; 
 int TWA_STATUS_COMMAND_QUEUE_EMPTY ; 
 int TWA_STATUS_COMMAND_QUEUE_FULL ; 
 int TWA_STATUS_HOST_INTERRUPT ; 
 int TWA_STATUS_MICROCONTROLLER_READY ; 
 int TWA_STATUS_PCI_ABORT_INTERRUPT ; 
 int TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT ; 
 int TWA_STATUS_QUEUE_ERROR_INTERRUPT ; 
 int TWA_STATUS_RESPONSE_INTERRUPT ; 
 int TWA_STATUS_RESPONSE_QUEUE_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

TW_INT8	*
FUNC2(TW_UINT32 reg, TW_INT8 *str)
{
	FUNC0(str, "[");

	if (reg & TWA_STATUS_COMMAND_QUEUE_EMPTY)
		FUNC0(&str[FUNC1(str)], "CMD_Q_EMPTY,");
	if (reg & TWA_STATUS_MICROCONTROLLER_READY)
		FUNC0(&str[FUNC1(str)], "MC_RDY,");
	if (reg & TWA_STATUS_RESPONSE_QUEUE_EMPTY)
		FUNC0(&str[FUNC1(str)], "RESP_Q_EMPTY,");
	if (reg & TWA_STATUS_COMMAND_QUEUE_FULL)
		FUNC0(&str[FUNC1(str)], "CMD_Q_FULL,");
	if (reg & TWA_STATUS_RESPONSE_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "RESP_INTR,");
	if (reg & TWA_STATUS_COMMAND_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "CMD_INTR,");
	if (reg & TWA_STATUS_ATTENTION_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "ATTN_INTR,");
	if (reg & TWA_STATUS_HOST_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "HOST_INTR,");
	if (reg & TWA_STATUS_PCI_ABORT_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "PCI_ABRT,");
	if (reg & TWA_STATUS_QUEUE_ERROR_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "Q_ERR,");
	if (reg & TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT)
		FUNC0(&str[FUNC1(str)], "PCI_PERR");

	FUNC0(&str[FUNC1(str)], "]");
	return(str);
}