#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iser_conn {int /*<<< orphan*/  login_req_buf; } ;
struct icl_pdu {size_t ip_data_len; TYPE_1__* ip_bhs; } ;
struct icl_conn {int dummy; } ;
struct TYPE_2__ {int bhs_opcode; } ;

/* Variables and functions */
 int ISCSI_BHS_OPCODE_LOGIN_REQUEST ; 
 int ISCSI_BHS_OPCODE_TEXT_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct iser_conn* FUNC1 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 

int
FUNC3(struct icl_conn *ic, struct icl_pdu *request,
			  const void *addr, size_t len, int flags)
{
	struct iser_conn *iser_conn = FUNC1(ic);

	if (request->ip_bhs->bhs_opcode & ISCSI_BHS_OPCODE_LOGIN_REQUEST ||
	    request->ip_bhs->bhs_opcode & ISCSI_BHS_OPCODE_TEXT_REQUEST) {
		FUNC0("copy to login buff");
		FUNC2(iser_conn->login_req_buf, addr, len);
		request->ip_data_len = len;
	}

	return (0);
}