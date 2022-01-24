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
struct query_state {int kevent_watermark; int /*<<< orphan*/  kevent_filter; int /*<<< orphan*/  process_func; int /*<<< orphan*/  config_entry; scalar_t__ mdata; int /*<<< orphan*/  response; } ;
struct cache_mp_read_session_read_response {scalar_t__ error_code; int /*<<< orphan*/  data_size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  cache_mp_read_session ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  CET_MP_READ_SESSION_READ_RESPONSE ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cache_mp_read_session_read_response* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_mp_read_session_read_response_write1 ; 
 int /*<<< orphan*/  on_mp_read_session_response_process ; 

__attribute__((used)) static int
FUNC9(struct query_state *qstate)
{
	struct cache_mp_read_session_read_response	*read_response;

	FUNC0(on_mp_read_session_response_process);
	FUNC7(&qstate->response, CET_MP_READ_SESSION_READ_RESPONSE);
	read_response = FUNC6(
		&qstate->response);

	FUNC4(qstate->config_entry, CELT_MULTIPART);
	read_response->error_code = FUNC3(
		(cache_mp_read_session)qstate->mdata, NULL,
		&read_response->data_size);

	if (read_response->error_code == 0) {
		read_response->data = FUNC8(read_response->data_size);
		FUNC2(read_response != NULL);
		read_response->error_code = FUNC3(
			(cache_mp_read_session)qstate->mdata,
	    		read_response->data,
			&read_response->data_size);
	}
	FUNC5(qstate->config_entry, CELT_MULTIPART);

	if (read_response->error_code == 0)
		qstate->kevent_watermark = sizeof(size_t) + sizeof(int);
	else
		qstate->kevent_watermark = sizeof(int);
	qstate->process_func = on_mp_read_session_read_response_write1;
	qstate->kevent_filter = EVFILT_WRITE;

	FUNC1(on_mp_read_session_response_process);
	return (0);
}