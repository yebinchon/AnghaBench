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
struct query_state {scalar_t__ (* write_func ) (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;size_t kevent_watermark; int /*<<< orphan*/  kevent_filter; int /*<<< orphan*/  process_func; int /*<<< orphan*/  response; int /*<<< orphan*/  request; } ;
struct cache_mp_read_session_read_response {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cache_mp_read_session_read_response* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_mp_read_session_mapper ; 
 scalar_t__ FUNC5 (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct query_state *qstate)
{
	struct cache_mp_read_session_read_response *read_response;
	ssize_t	result;

	FUNC1(on_mp_read_session_read_response_write2);
	read_response = FUNC4(
		&qstate->response);
	result = qstate->write_func(qstate, read_response->data,
		read_response->data_size);
	if (result < 0 || (size_t)result != qstate->kevent_watermark) {
		FUNC0("on_mp_read_session_read_response_write2",
			"write failed");
		FUNC2(on_mp_read_session_read_response_write2);
		return (-1);
	}

	FUNC3(&qstate->request);
	FUNC3(&qstate->response);

	qstate->kevent_watermark = sizeof(int);
	qstate->process_func = on_mp_read_session_mapper;
	qstate->kevent_filter = EVFILT_READ;

	FUNC2(on_mp_read_session_read_response_write2);
	return (0);
}