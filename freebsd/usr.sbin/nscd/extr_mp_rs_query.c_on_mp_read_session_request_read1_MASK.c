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
struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int /*<<< orphan*/  process_func; int /*<<< orphan*/  request; } ;
struct cache_mp_read_session_request {int entry_length; int /*<<< orphan*/ * entry; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CET_MP_READ_SESSION_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 struct cache_mp_read_session_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_mp_read_session_request_read2 ; 
 int FUNC7 (struct query_state*,int*,int) ; 

int
FUNC8(struct query_state *qstate)
{
	struct cache_mp_read_session_request	*c_mp_rs_request;
	ssize_t	result;

	FUNC1(on_mp_read_session_request_read1);
	if (qstate->kevent_watermark == 0)
		qstate->kevent_watermark = sizeof(size_t);
	else {
		FUNC6(&qstate->request,
	    		CET_MP_READ_SESSION_REQUEST);
		c_mp_rs_request = FUNC5(
	    		&qstate->request);

		result = qstate->read_func(qstate,
	    		&c_mp_rs_request->entry_length, sizeof(size_t));

		if (result != sizeof(size_t)) {
			FUNC2(on_mp_read_session_request_read1);
			return (-1);
		}

		if (FUNC0(c_mp_rs_request->entry_length)) {
			FUNC2(on_mp_read_session_request_read1);
			return (-1);
		}

		c_mp_rs_request->entry = FUNC4(1,
			c_mp_rs_request->entry_length + 1);
		FUNC3(c_mp_rs_request->entry != NULL);

		qstate->kevent_watermark = c_mp_rs_request->entry_length;
		qstate->process_func = on_mp_read_session_request_read2;
	}
	FUNC2(on_mp_read_session_request_read1);
	return (0);
}