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
struct query_state {int kevent_watermark; int /*<<< orphan*/  process_func; int /*<<< orphan*/  kevent_filter; TYPE_4__* config_entry; int /*<<< orphan*/  timeout; int /*<<< orphan*/  request; int /*<<< orphan*/  response; } ;
struct cache_write_response {int error_code; } ;
struct cache_write_request {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; int /*<<< orphan*/  cache_key_size; int /*<<< orphan*/  cache_key; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/ * cache_entry ;
struct TYPE_9__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  entry_name; } ;
struct TYPE_8__ {TYPE_1__ cep; } ;
struct TYPE_10__ {scalar_t__ enabled; scalar_t__ perform_actual_lookups; TYPE_3__ common_query_timeout; int /*<<< orphan*/ * positive_cache_entry; TYPE_2__ positive_cache_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CELT_POSITIVE ; 
 int /*<<< orphan*/  CET_WRITE_RESPONSE ; 
 int EACCES ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EVFILT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cache_write_request* FUNC10 (int /*<<< orphan*/ *) ; 
 struct cache_write_response* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  on_write_response_write1 ; 
 int /*<<< orphan*/  s_cache ; 
 int /*<<< orphan*/  s_configuration ; 

__attribute__((used)) static	int
FUNC14(struct query_state *qstate)
{
	struct cache_write_request	*write_request;
	struct cache_write_response	*write_response;
	cache_entry c_entry;

	FUNC1(on_write_request_process);
	FUNC12(&qstate->response, CET_WRITE_RESPONSE);
	write_response = FUNC11(&qstate->response);
	write_request = FUNC10(&qstate->request);

	qstate->config_entry = FUNC4(
		s_configuration, write_request->entry);

	if (qstate->config_entry == NULL) {
		write_response->error_code = ENOENT;

		FUNC0("write_request", "can't find configuration"
		    " entry '%s'. aborting request", write_request->entry);
		goto fin;
	}

	if (qstate->config_entry->enabled == 0) {
		write_response->error_code = EACCES;

		FUNC0("write_request",
			"configuration entry '%s' is disabled",
			write_request->entry);
		goto fin;
	}

	if (qstate->config_entry->perform_actual_lookups != 0) {
		write_response->error_code = EOPNOTSUPP;

		FUNC0("write_request",
			"entry '%s' performs lookups by itself: "
			"can't write to it", write_request->entry);
		goto fin;
	}

	FUNC6(s_configuration);
	c_entry = FUNC9(s_cache,
		qstate->config_entry->positive_cache_params.cep.entry_name);
	FUNC7(s_configuration);
	if (c_entry != NULL) {
		FUNC5(qstate->config_entry, CELT_POSITIVE);
		qstate->config_entry->positive_cache_entry = c_entry;
		write_response->error_code = FUNC3(c_entry,
			write_request->cache_key,
	    		write_request->cache_key_size,
	    		write_request->data,
			write_request->data_size);
		FUNC8(qstate->config_entry, CELT_POSITIVE);

		if ((qstate->config_entry->common_query_timeout.tv_sec != 0) ||
		    (qstate->config_entry->common_query_timeout.tv_usec != 0))
			FUNC13(&qstate->timeout,
				&qstate->config_entry->common_query_timeout,
				sizeof(struct timeval));

	} else
		write_response->error_code = -1;

fin:
	qstate->kevent_filter = EVFILT_WRITE;
	qstate->kevent_watermark = sizeof(int);
	qstate->process_func = on_write_response_write1;

	FUNC2(on_write_request_process);
	return (0);
}