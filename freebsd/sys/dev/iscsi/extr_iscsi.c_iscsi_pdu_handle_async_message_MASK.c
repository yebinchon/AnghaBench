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
struct iscsi_bhs_asynchronous_message {int bhsam_async_event; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;

/* Variables and functions */
#define  BHSAM_EVENT_TARGET_REQUESTS_LOGOUT 130 
#define  BHSAM_EVENT_TARGET_TERMINATES_CONNECTION 129 
#define  BHSAM_EVENT_TARGET_TERMINATES_SESSION 128 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,...) ; 
 struct iscsi_session* FUNC1 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC2 (struct icl_pdu*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_session*) ; 

__attribute__((used)) static void
FUNC5(struct icl_pdu *response)
{
	struct iscsi_bhs_asynchronous_message *bhsam;
	struct iscsi_session *is;

	is = FUNC1(response);
	bhsam = (struct iscsi_bhs_asynchronous_message *)response->ip_bhs;
	switch (bhsam->bhsam_async_event) {
	case BHSAM_EVENT_TARGET_REQUESTS_LOGOUT:
		FUNC0(is, "target requests logout; removing session");
		FUNC3(is);
		FUNC4(is);
		break;
	case BHSAM_EVENT_TARGET_TERMINATES_CONNECTION:
		FUNC0(is, "target indicates it will drop the connection");
		break;
	case BHSAM_EVENT_TARGET_TERMINATES_SESSION:
		FUNC0(is, "target indicates it will drop the session");
		break;
	default:
		/*
		 * XXX: Technically, we're obligated to also handle
		 * 	parameter renegotiation.
		 */
		FUNC0(is, "ignoring AsyncEvent %d", bhsam->bhsam_async_event);
		break;
	}

	FUNC2(response);
}