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
struct query_state {scalar_t__ (* write_func ) (struct query_state*,scalar_t__*,int) ;size_t kevent_watermark; int /*<<< orphan*/ * process_func; int /*<<< orphan*/  response; } ;
struct cache_mp_read_session_read_response {scalar_t__ error_code; size_t data_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 struct cache_mp_read_session_read_response* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * on_mp_read_session_read_response_write2 ; 
 scalar_t__ FUNC4 (struct query_state*,scalar_t__*,int) ; 
 scalar_t__ FUNC5 (struct query_state*,size_t*,int) ; 

__attribute__((used)) static int
FUNC6(struct query_state *qstate)
{
	struct cache_mp_read_session_read_response	*read_response;
	ssize_t	result;

	FUNC1(on_mp_read_session_read_response_write1);
	read_response = FUNC3(
		&qstate->response);

	result = qstate->write_func(qstate, &read_response->error_code,
		sizeof(int));
	if (read_response->error_code == 0) {
		result += qstate->write_func(qstate, &read_response->data_size,
			sizeof(size_t));
		if (result < 0 || (size_t)result != qstate->kevent_watermark) {
			FUNC2(on_mp_read_session_read_response_write1);
			FUNC0("on_mp_read_session_read_response_write1",
				"write failed");
			return (-1);
		}

		qstate->kevent_watermark = read_response->data_size;
		qstate->process_func = on_mp_read_session_read_response_write2;
	} else {
		if (result < 0 || (size_t)result != qstate->kevent_watermark) {
			FUNC0("on_mp_read_session_read_response_write1",
				"write failed");
			FUNC2(on_mp_read_session_read_response_write1);
			return (-1);
		}

		qstate->kevent_watermark = 0;
		qstate->process_func = NULL;
	}

	FUNC2(on_mp_read_session_read_response_write1);
	return (0);
}