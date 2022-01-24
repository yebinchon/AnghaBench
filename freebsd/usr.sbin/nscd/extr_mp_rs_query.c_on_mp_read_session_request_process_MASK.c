#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct query_state {int kevent_watermark; int /*<<< orphan*/  kevent_filter; int /*<<< orphan*/  process_func; TYPE_4__* config_entry; int /*<<< orphan*/  timeout; int /*<<< orphan*/  destroy_func; scalar_t__ mdata; int /*<<< orphan*/  eid_str; int /*<<< orphan*/  request; int /*<<< orphan*/  response; } ;
struct multipart_agent {int (* mp_lookup_func ) (char**,size_t*,void*) ;void* (* mp_init_func ) () ;} ;
struct cache_mp_read_session_response {int error_code; } ;
struct cache_mp_read_session_request {int /*<<< orphan*/  entry; } ;
struct agent {scalar_t__ type; } ;
typedef  int /*<<< orphan*/ * cache_mp_write_session ;
typedef  scalar_t__ cache_mp_read_session ;
typedef  scalar_t__ cache_entry ;
struct TYPE_9__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct TYPE_10__ {scalar_t__ enabled; scalar_t__ perform_actual_lookups; TYPE_3__ mp_query_timeout; TYPE_2__ mp_cache_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  CET_MP_READ_SESSION_RESPONSE ; 
 int EACCES ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 scalar_t__ INVALID_CACHE ; 
 scalar_t__ INVALID_CACHE_ENTRY ; 
 scalar_t__ INVALID_CACHE_MP_READ_SESSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ MULTIPART_AGENT ; 
 int NS_TERMINATE ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC7 (struct query_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct agent* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 struct cache_mp_read_session_request* FUNC17 (int /*<<< orphan*/ *) ; 
 struct cache_mp_read_session_response* FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  on_mp_read_session_destroy ; 
 int /*<<< orphan*/  on_mp_read_session_response_write1 ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (struct query_state*,char*) ; 
 int /*<<< orphan*/  s_agent_table ; 
 int /*<<< orphan*/  s_cache ; 
 int /*<<< orphan*/  s_configuration ; 
 char* FUNC24 (int /*<<< orphan*/ ) ; 
 void* FUNC25 () ; 
 int FUNC26 (char**,size_t*,void*) ; 

__attribute__((used)) static int
FUNC27(struct query_state *qstate)
{
	struct cache_mp_read_session_request	*c_mp_rs_request;
	struct cache_mp_read_session_response	*c_mp_rs_response;
	cache_mp_read_session	rs;
	cache_entry	c_entry;
	char	*dec_cache_entry_name;

	char *buffer;
	size_t buffer_size;
	cache_mp_write_session ws;
	struct agent	*lookup_agent;
	struct multipart_agent *mp_agent;
	void *mdata;
	int res;

	FUNC1(on_mp_read_session_request_process);
	FUNC19(&qstate->response, CET_MP_READ_SESSION_RESPONSE);
	c_mp_rs_response = FUNC18(
		&qstate->response);
	c_mp_rs_request = FUNC17(&qstate->request);

	qstate->config_entry = FUNC9(
		s_configuration, c_mp_rs_request->entry);
	if (qstate->config_entry == NULL) {
		c_mp_rs_response->error_code = ENOENT;

		FUNC0("read_session_request",
			"can't find configuration entry '%s'."
			" aborting request", c_mp_rs_request->entry);
		goto fin;
	}

	if (qstate->config_entry->enabled == 0) {
		c_mp_rs_response->error_code = EACCES;

		FUNC0("read_session_request",
			"configuration entry '%s' is disabled",
			c_mp_rs_request->entry);
		goto fin;
	}

	if (qstate->config_entry->perform_actual_lookups != 0)
		dec_cache_entry_name = FUNC24(
			qstate->config_entry->mp_cache_params.cep.entry_name);
	else {
#ifdef NS_NSCD_EID_CHECKING
		if (check_query_eids(qstate) != 0) {
			c_mp_rs_response->error_code = EPERM;
			goto fin;
		}
#endif

		FUNC4(&dec_cache_entry_name, "%d%d", qstate->eid_str,
			qstate->config_entry->mp_cache_params.cep.entry_name);
	}

	FUNC5(dec_cache_entry_name != NULL);

	FUNC11(s_configuration);
	c_entry = FUNC15(s_cache, dec_cache_entry_name);
	FUNC12(s_configuration);

	if ((c_entry == INVALID_CACHE) &&
	   (qstate->config_entry->perform_actual_lookups != 0))
		c_entry = FUNC23(qstate,
			dec_cache_entry_name);

	FUNC16(dec_cache_entry_name);

	if (c_entry != INVALID_CACHE_ENTRY) {
		FUNC10(qstate->config_entry, CELT_MULTIPART);
		rs = FUNC21(c_entry);
		FUNC13(qstate->config_entry,
			CELT_MULTIPART);

		if ((rs == INVALID_CACHE_MP_READ_SESSION) &&
		   (qstate->config_entry->perform_actual_lookups != 0)) {
			lookup_agent = FUNC14(s_agent_table,
				c_mp_rs_request->entry, MULTIPART_AGENT);

			if ((lookup_agent != NULL) &&
			(lookup_agent->type == MULTIPART_AGENT)) {
				mp_agent = (struct multipart_agent *)
					lookup_agent;
				mdata = mp_agent->mp_init_func();

				/*
				 * Multipart agents read the whole snapshot
				 * of the data at one time.
				 */
				FUNC10(qstate->config_entry,
					CELT_MULTIPART);
				ws = FUNC22(c_entry);
				FUNC13(qstate->config_entry,
					CELT_MULTIPART);
				if (ws != NULL) {
				    do {
					buffer = NULL;
					res = mp_agent->mp_lookup_func(&buffer,
						&buffer_size,
						mdata);

					if ((res & NS_TERMINATE) &&
					   (buffer != NULL)) {
						FUNC10(
							qstate->config_entry,
						   	CELT_MULTIPART);
						if (FUNC6(ws, buffer,
						    buffer_size) != 0) {
							FUNC3(ws);
							ws = NULL;
						}
						FUNC13(
							qstate->config_entry,
							CELT_MULTIPART);

						FUNC16(buffer);
						buffer = NULL;
					} else {
						FUNC10(
							qstate->config_entry,
							CELT_MULTIPART);
						FUNC8(ws);
						FUNC13(
							qstate->config_entry,
							CELT_MULTIPART);

						FUNC16(buffer);
						buffer = NULL;
					}
				    } while ((res & NS_TERMINATE) &&
				    	    (ws != NULL));
				}

				FUNC10(qstate->config_entry,
					CELT_MULTIPART);
				rs = FUNC21(c_entry);
				FUNC13(qstate->config_entry,
					CELT_MULTIPART);
			}
		}

		if (rs == INVALID_CACHE_MP_READ_SESSION)
			c_mp_rs_response->error_code = -1;
		else {
		    qstate->mdata = rs;
		    qstate->destroy_func = on_mp_read_session_destroy;

		    FUNC10(qstate->config_entry,
			CELT_MULTIPART);
		    if ((qstate->config_entry->mp_query_timeout.tv_sec != 0) ||
		    (qstate->config_entry->mp_query_timeout.tv_usec != 0))
			FUNC20(&qstate->timeout,
			    &qstate->config_entry->mp_query_timeout,
			    sizeof(struct timeval));
		    FUNC13(qstate->config_entry,
			CELT_MULTIPART);
		}
	} else
		c_mp_rs_response->error_code = -1;

fin:
	qstate->process_func = on_mp_read_session_response_write1;
	qstate->kevent_watermark = sizeof(int);
	qstate->kevent_filter = EVFILT_WRITE;

	FUNC2(on_mp_read_session_request_process);
	return (0);
}