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
struct cache_mp_write_session_response {int error_code; } ;
struct cache_mp_write_session_request {int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ cache_mp_write_session ;
typedef  int /*<<< orphan*/ * cache_entry ;
struct TYPE_9__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct TYPE_10__ {scalar_t__ enabled; scalar_t__ perform_actual_lookups; TYPE_3__ mp_query_timeout; TYPE_2__ mp_cache_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_MULTIPART ; 
 int /*<<< orphan*/  CET_MP_WRITE_SESSION_RESPONSE ; 
 int EACCES ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/ * INVALID_CACHE_ENTRY ; 
 scalar_t__ INVALID_CACHE_MP_WRITE_SESSION ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct query_state*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 struct cache_mp_write_session_request* FUNC13 (int /*<<< orphan*/ *) ; 
 struct cache_mp_write_session_response* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  on_mp_write_session_destroy ; 
 int /*<<< orphan*/  on_mp_write_session_response_write1 ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (struct query_state*,char*) ; 
 int /*<<< orphan*/  s_cache ; 
 int /*<<< orphan*/  s_configuration ; 

__attribute__((used)) static int
FUNC19(struct query_state *qstate)
{
	struct cache_mp_write_session_request	*c_mp_ws_request;
	struct cache_mp_write_session_response	*c_mp_ws_response;
	cache_mp_write_session	ws;
	cache_entry	c_entry;
	char	*dec_cache_entry_name;

	FUNC1(on_mp_write_session_request_process);
	FUNC15(&qstate->response, CET_MP_WRITE_SESSION_RESPONSE);
	c_mp_ws_response = FUNC14(
		&qstate->response);
	c_mp_ws_request = FUNC13(&qstate->request);

	qstate->config_entry = FUNC6(
		s_configuration, c_mp_ws_request->entry);
	if (qstate->config_entry == NULL) {
		c_mp_ws_response->error_code = ENOENT;

		FUNC0("write_session_request",
			"can't find configuration entry '%s'. "
	    		"aborting request", c_mp_ws_request->entry);
	    	goto fin;
	}

	if (qstate->config_entry->enabled == 0) {
		c_mp_ws_response->error_code = EACCES;

		FUNC0("write_session_request",
			"configuration entry '%s' is disabled",
			c_mp_ws_request->entry);
		goto fin;
	}

	if (qstate->config_entry->perform_actual_lookups != 0) {
		c_mp_ws_response->error_code = EOPNOTSUPP;

		FUNC0("write_session_request",
			"entry '%s' performs lookups by itself: "
			"can't write to it", c_mp_ws_request->entry);
		goto fin;
	} else {
#ifdef NS_NSCD_EID_CHECKING
		if (check_query_eids(qstate) != 0) {
			c_mp_ws_response->error_code = EPERM;
			goto fin;
		}
#endif
	}

	/*
	 * All multipart entries are separated by their name decorations.
	 * For one configuration entry there will be a lot of multipart
	 * cache entries - each with its own decorated name.
	 */
	FUNC3(&dec_cache_entry_name, "%d%d", qstate->eid_str,
		qstate->config_entry->mp_cache_params.cep.entry_name);
	FUNC4(dec_cache_entry_name != NULL);

	FUNC8(s_configuration);
	c_entry = FUNC11(s_cache,
		dec_cache_entry_name);
	FUNC9(s_configuration);

	if (c_entry == INVALID_CACHE_ENTRY)
		c_entry = FUNC18(qstate,
			dec_cache_entry_name);

	FUNC12(dec_cache_entry_name);

	FUNC4(c_entry != NULL);
	FUNC7(qstate->config_entry, CELT_MULTIPART);
	ws = FUNC17(c_entry);
	if (ws == INVALID_CACHE_MP_WRITE_SESSION)
		c_mp_ws_response->error_code = -1;
	else {
		qstate->mdata = ws;
		qstate->destroy_func = on_mp_write_session_destroy;

		if ((qstate->config_entry->mp_query_timeout.tv_sec != 0) ||
		    (qstate->config_entry->mp_query_timeout.tv_usec != 0))
			FUNC16(&qstate->timeout,
				&qstate->config_entry->mp_query_timeout,
				sizeof(struct timeval));
	}
	FUNC10(qstate->config_entry, CELT_MULTIPART);

fin:
	qstate->process_func = on_mp_write_session_response_write1;
	qstate->kevent_watermark = sizeof(int);
	qstate->kevent_filter = EVFILT_WRITE;

	FUNC2(on_mp_write_session_request_process);
	return (0);
}