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
struct query_state {int /*<<< orphan*/  process_func; scalar_t__ kevent_watermark; struct configuration_entry* config_entry; int /*<<< orphan*/  euid; int /*<<< orphan*/  eid_str_length; int /*<<< orphan*/  eid_str; int /*<<< orphan*/  request; int /*<<< orphan*/  response; } ;
struct configuration_entry {int /*<<< orphan*/  perform_actual_lookups; } ;
struct cache_transform_response {int error_code; } ;
struct cache_transform_request {int transformation_type; int /*<<< orphan*/ * entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  CET_TRANSFORM_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
#define  TT_ALL 129 
#define  TT_USER 128 
 int /*<<< orphan*/  FUNC3 (struct configuration_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct configuration_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 struct configuration_entry* FUNC7 (int /*<<< orphan*/ ,size_t) ; 
 struct cache_transform_request* FUNC8 (int /*<<< orphan*/ *) ; 
 struct cache_transform_response* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_transform_response_write1 ; 
 int /*<<< orphan*/  s_configuration ; 

__attribute__((used)) static int
FUNC11(struct query_state *qstate)
{
	struct cache_transform_request *transform_request;
	struct cache_transform_response *transform_response;
	struct configuration_entry *config_entry;
	size_t	i, size;

	FUNC1(on_transform_request_process);
	FUNC10(&qstate->response, CET_TRANSFORM_RESPONSE);
	transform_response = FUNC9(&qstate->response);
	transform_request = FUNC8(&qstate->request);

	switch (transform_request->transformation_type) {
	case TT_USER:
		if (transform_request->entry == NULL) {
			size = FUNC6(s_configuration);
			for (i = 0; i < size; ++i) {
			    config_entry = FUNC7(
				s_configuration, i);

			    if (config_entry->perform_actual_lookups == 0)
			    	FUNC4(config_entry,
				    qstate->eid_str, qstate->eid_str_length);
			}
		} else {
			qstate->config_entry = FUNC5(
				s_configuration, transform_request->entry);

			if (qstate->config_entry == NULL) {
				FUNC0("transform_request",
					"can't find configuration"
		   			" entry '%s'. aborting request",
					transform_request->entry);
				transform_response->error_code = -1;
				goto fin;
			}

			if (qstate->config_entry->perform_actual_lookups != 0) {
				FUNC0("transform_request",
					"can't transform the cache entry %s"
					", because it ised for actual lookups",
					transform_request->entry);
				transform_response->error_code = -1;
				goto fin;
			}

			FUNC4(qstate->config_entry,
				qstate->eid_str, qstate->eid_str_length);
		}
		break;
	case TT_ALL:
		if (qstate->euid != 0)
			transform_response->error_code = -1;
		else {
			if (transform_request->entry == NULL) {
				size = FUNC6(
					s_configuration);
				for (i = 0; i < size; ++i) {
				    FUNC3(
					FUNC7(
						s_configuration, i));
				}
			} else {
				qstate->config_entry = FUNC5(
					s_configuration,
					transform_request->entry);

				if (qstate->config_entry == NULL) {
					FUNC0("transform_request",
						"can't find configuration"
		   				" entry '%s'. aborting request",
						transform_request->entry);
					transform_response->error_code = -1;
					goto fin;
				}

				FUNC3(qstate->config_entry);
			}
		}
		break;
	default:
		transform_response->error_code = -1;
	}

fin:
	qstate->kevent_watermark = 0;
	qstate->process_func = on_transform_response_write1;
	FUNC2(on_transform_request_process);
	return (0);
}