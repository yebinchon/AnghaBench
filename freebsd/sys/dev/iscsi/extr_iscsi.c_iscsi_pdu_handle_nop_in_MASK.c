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
struct iscsi_session {int dummy; } ;
struct iscsi_bhs_nop_out {int bhsno_opcode; int bhsno_flags; int bhsno_initiator_task_tag; int bhsno_target_transfer_tag; } ;
struct iscsi_bhs_nop_in {int bhsni_target_transfer_tag; } ;
struct icl_pdu {scalar_t__ ip_bhs; int /*<<< orphan*/  ip_conn; } ;

/* Variables and functions */
 int ISCSI_BHS_OPCODE_IMMEDIATE ; 
 int ISCSI_BHS_OPCODE_NOP_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*) ; 
 int /*<<< orphan*/  M_ISCSI ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct iscsi_session* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct icl_pdu*,void*,size_t,int) ; 
 size_t FUNC4 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC5 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC6 (struct icl_pdu*,int /*<<< orphan*/ ,void*,size_t) ; 
 struct icl_pdu* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_session*) ; 
 void* FUNC10 (size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct icl_pdu *response)
{
	struct iscsi_session *is;
	struct iscsi_bhs_nop_out *bhsno;
	struct iscsi_bhs_nop_in *bhsni;
	struct icl_pdu *request;
	void *data = NULL;
	size_t datasize;
	int error;

	is = FUNC1(response);
	bhsni = (struct iscsi_bhs_nop_in *)response->ip_bhs;

	if (bhsni->bhsni_target_transfer_tag == 0xffffffff) {
		/*
		 * Nothing to do; iscsi_pdu_update_statsn() already
		 * zeroed the timeout.
		 */
		FUNC5(response);
		return;
	}

	datasize = FUNC4(response);
	if (datasize > 0) {
		data = FUNC10(datasize, M_ISCSI, M_NOWAIT | M_ZERO);
		if (data == NULL) {
			FUNC0(is, "failed to allocate memory; "
			    "reconnecting");
			FUNC5(response);
			FUNC9(is);
			return;
		}
		FUNC6(response, 0, data, datasize);
	}

	request = FUNC7(response->ip_conn, M_NOWAIT);
	if (request == NULL) {
		FUNC0(is, "failed to allocate memory; "
		    "reconnecting");
		FUNC2(data, M_ISCSI);
		FUNC5(response);
		FUNC9(is);
		return;
	}
	bhsno = (struct iscsi_bhs_nop_out *)request->ip_bhs;
	bhsno->bhsno_opcode = ISCSI_BHS_OPCODE_NOP_OUT |
	    ISCSI_BHS_OPCODE_IMMEDIATE;
	bhsno->bhsno_flags = 0x80;
	bhsno->bhsno_initiator_task_tag = 0xffffffff;
	bhsno->bhsno_target_transfer_tag = bhsni->bhsni_target_transfer_tag;
	if (datasize > 0) {
		error = FUNC3(request, data, datasize, M_NOWAIT);
		if (error != 0) {
			FUNC0(is, "failed to allocate memory; "
			    "reconnecting");
			FUNC2(data, M_ISCSI);
			FUNC5(request);
			FUNC5(response);
			FUNC9(is);
			return;
		}
		FUNC2(data, M_ISCSI);
	}

	FUNC5(response);
	FUNC8(request);
}