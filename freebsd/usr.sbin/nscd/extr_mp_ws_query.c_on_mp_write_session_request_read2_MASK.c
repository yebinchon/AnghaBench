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
struct query_state {scalar_t__ (* read_func ) (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;size_t kevent_watermark; int /*<<< orphan*/  process_func; int /*<<< orphan*/  request; } ;
struct cache_mp_write_session_request {int /*<<< orphan*/  entry_length; int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 struct cache_mp_write_session_request* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_mp_write_session_request_process ; 
 scalar_t__ FUNC4 (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct query_state *qstate)
{
	struct cache_mp_write_session_request	*c_mp_ws_request;
	ssize_t	result;

	FUNC1(on_mp_write_session_request_read2);
	c_mp_ws_request = FUNC3(&qstate->request);

	result = qstate->read_func(qstate, c_mp_ws_request->entry,
		c_mp_ws_request->entry_length);

	if (result < 0 || (size_t)result != qstate->kevent_watermark) {
		FUNC0("on_mp_write_session_request_read2",
			"read failed");
		FUNC2(on_mp_write_session_request_read2);
		return (-1);
	}

	qstate->kevent_watermark = 0;
	qstate->process_func = on_mp_write_session_request_process;

	FUNC2(on_mp_write_session_request_read2);
	return (0);
}