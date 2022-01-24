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
struct comm_element {int type; int /*<<< orphan*/  c_mp_rs_read_response; int /*<<< orphan*/  c_mp_rs_response; int /*<<< orphan*/  c_mp_rs_request; int /*<<< orphan*/  c_mp_ws_write_response; int /*<<< orphan*/  c_mp_ws_write_request; int /*<<< orphan*/  c_mp_ws_response; int /*<<< orphan*/  c_mp_ws_request; int /*<<< orphan*/  c_transform_response; int /*<<< orphan*/  c_transform_request; int /*<<< orphan*/  c_read_response; int /*<<< orphan*/  c_read_request; int /*<<< orphan*/  c_write_response; int /*<<< orphan*/  c_write_request; } ;
typedef  enum comm_element_t { ____Placeholder_comm_element_t } comm_element_t ;

/* Variables and functions */
#define  CET_MP_READ_SESSION_READ_RESPONSE 141 
#define  CET_MP_READ_SESSION_REQUEST 140 
#define  CET_MP_READ_SESSION_RESPONSE 139 
#define  CET_MP_WRITE_SESSION_REQUEST 138 
#define  CET_MP_WRITE_SESSION_RESPONSE 137 
#define  CET_MP_WRITE_SESSION_WRITE_REQUEST 136 
#define  CET_MP_WRITE_SESSION_WRITE_RESPONSE 135 
#define  CET_READ_REQUEST 134 
#define  CET_READ_RESPONSE 133 
#define  CET_TRANSFORM_REQUEST 132 
#define  CET_TRANSFORM_RESPONSE 131 
#define  CET_UNDEFINED 130 
#define  CET_WRITE_REQUEST 129 
#define  CET_WRITE_RESPONSE 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct comm_element*,int)) ; 
 int /*<<< orphan*/  FUNC2 (void (*) (struct comm_element*,int)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct comm_element*,int /*<<< orphan*/ ,int) ; 

void
FUNC17(struct comm_element *element, enum comm_element_t type)
{

	FUNC1(init_comm_element);
	FUNC16(element, 0, sizeof(struct comm_element));

	switch (type) {
	case CET_WRITE_REQUEST:
		FUNC14(&element->c_write_request);
		break;
	case CET_WRITE_RESPONSE:
		FUNC15(&element->c_write_response);
		break;
	case CET_READ_REQUEST:
		FUNC10(&element->c_read_request);
		break;
	case CET_READ_RESPONSE:
		FUNC11(&element->c_read_response);
		break;
	case CET_TRANSFORM_REQUEST:
		FUNC12(&element->c_transform_request);
		break;
	case CET_TRANSFORM_RESPONSE:
		FUNC13(&element->c_transform_response);
		break;
	case CET_MP_WRITE_SESSION_REQUEST:
		FUNC6(&element->c_mp_ws_request);
		break;
	case CET_MP_WRITE_SESSION_RESPONSE:
		FUNC7(&element->c_mp_ws_response);
		break;
	case CET_MP_WRITE_SESSION_WRITE_REQUEST:
		FUNC8(
			&element->c_mp_ws_write_request);
		break;
	case CET_MP_WRITE_SESSION_WRITE_RESPONSE:
		FUNC9(
			&element->c_mp_ws_write_response);
		break;
	case CET_MP_READ_SESSION_REQUEST:
		FUNC4(&element->c_mp_rs_request);
		break;
	case CET_MP_READ_SESSION_RESPONSE:
		FUNC5(&element->c_mp_rs_response);
		break;
	case CET_MP_READ_SESSION_READ_RESPONSE:
		FUNC3(
			&element->c_mp_rs_read_response);
		break;
	case CET_UNDEFINED:
		break;
	default:
		FUNC0("init_comm_element", "invalid communication element");
		FUNC2(init_comm_element);
	return;
	}

	element->type = type;
	FUNC2(init_comm_element);
}