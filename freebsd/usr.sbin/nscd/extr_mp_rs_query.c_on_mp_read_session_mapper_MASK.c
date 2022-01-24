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
struct query_state {int kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int /*<<< orphan*/ * process_func; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  CET_MP_READ_SESSION_CLOSE_NOTIFICATION 129 
#define  CET_MP_READ_SESSION_READ_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/ * on_mp_read_session_close_notification ; 
 int /*<<< orphan*/ * on_mp_read_session_read_request_process ; 
 int FUNC3 (struct query_state*,int*,int) ; 

__attribute__((used)) static int
FUNC4(struct query_state *qstate)
{
	ssize_t	result;
	int elem_type;

	FUNC1(on_mp_read_session_mapper);
	if (qstate->kevent_watermark == 0) {
		qstate->kevent_watermark = sizeof(int);
	} else {
		result = qstate->read_func(qstate, &elem_type, sizeof(int));
		if (result != sizeof(int)) {
			FUNC0("on_mp_read_session_mapper",
				"read failed");
			FUNC2(on_mp_read_session_mapper);
			return (-1);
		}

		switch (elem_type) {
		case CET_MP_READ_SESSION_READ_REQUEST:
			qstate->kevent_watermark = 0;
			qstate->process_func =
				on_mp_read_session_read_request_process;
			break;
		case CET_MP_READ_SESSION_CLOSE_NOTIFICATION:
			qstate->kevent_watermark = 0;
			qstate->process_func =
				on_mp_read_session_close_notification;
			break;
		default:
			qstate->kevent_watermark = 0;
			qstate->process_func = NULL;
			FUNC0("on_mp_read_session_mapper",
				"unknown element type");
			FUNC2(on_mp_read_session_mapper);
			return (-1);
		}
	}
	FUNC2(on_mp_read_session_mapper);
	return (0);
}