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
struct query_state {int (* read_func ) (struct query_state*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  process_func; int /*<<< orphan*/  kevent_watermark; int /*<<< orphan*/  request; } ;
struct cache_mp_write_session_write_request {int /*<<< orphan*/  data_size; int /*<<< orphan*/ * data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CET_MP_WRITE_SESSION_WRITE_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct cache_mp_write_session_write_request* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_mp_write_session_write_request_read2 ; 
 int FUNC8 (struct query_state*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(struct query_state *qstate)
{
	struct cache_mp_write_session_write_request	*write_request;
	ssize_t	result;

	FUNC2(on_mp_write_session_write_request_read1);
	FUNC7(&qstate->request,
		CET_MP_WRITE_SESSION_WRITE_REQUEST);
	write_request = FUNC6(
		&qstate->request);

	result = qstate->read_func(qstate, &write_request->data_size,
		sizeof(size_t));

	if (result != sizeof(size_t)) {
		FUNC1("on_mp_write_session_write_request_read1",
			"read failed");
		FUNC3(on_mp_write_session_write_request_read1);
		return (-1);
	}

	if (FUNC0(write_request->data_size)) {
		FUNC1("on_mp_write_session_write_request_read1",
			"invalid data_size value");
		FUNC3(on_mp_write_session_write_request_read1);
		return (-1);
	}

	write_request->data = FUNC5(1, write_request->data_size);
	FUNC4(write_request->data != NULL);

	qstate->kevent_watermark = write_request->data_size;
	qstate->process_func = on_mp_write_session_write_request_read2;
	FUNC3(on_mp_write_session_write_request_read1);
	return (0);
}