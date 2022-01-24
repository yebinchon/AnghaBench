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
struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int eid_str_length; int /*<<< orphan*/  process_func; int /*<<< orphan*/  eid_str; int /*<<< orphan*/  request; } ;
struct cache_read_request {int entry_length; int cache_key_size; int /*<<< orphan*/ * cache_key; int /*<<< orphan*/ * entry; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  CET_READ_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int) ; 
 struct cache_read_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_read_request_read2 ; 
 int FUNC8 (struct query_state*,int*,int) ; 
 int FUNC9 (struct query_state*,int*,int) ; 

__attribute__((used)) static int
FUNC10(struct query_state *qstate)
{
	struct cache_read_request *read_request;
	ssize_t	result;

	FUNC1(on_read_request_read1);
	if (qstate->kevent_watermark == 0)
		qstate->kevent_watermark = sizeof(size_t) * 2;
	else {
		FUNC6(&qstate->request, CET_READ_REQUEST);
		read_request = FUNC5(&qstate->request);

		result = qstate->read_func(qstate,
	    		&read_request->entry_length, sizeof(size_t));
		result += qstate->read_func(qstate,
	    		&read_request->cache_key_size, sizeof(size_t));

		if (result != sizeof(size_t) * 2) {
			FUNC2(on_read_request_read1);
			return (-1);
		}

		if (FUNC0(read_request->entry_length) ||
			FUNC0(read_request->cache_key_size)) {
			FUNC2(on_read_request_read1);
			return (-1);
		}

		read_request->entry = FUNC4(1,
			read_request->entry_length + 1);
		FUNC3(read_request->entry != NULL);

		read_request->cache_key = FUNC4(1,
			read_request->cache_key_size +
			qstate->eid_str_length);
		FUNC3(read_request->cache_key != NULL);
		FUNC7(read_request->cache_key, qstate->eid_str,
			qstate->eid_str_length);

		qstate->kevent_watermark = read_request->entry_length +
			read_request->cache_key_size;
		qstate->process_func = on_read_request_read2;
	}

	FUNC2(on_read_request_read1);
	return (0);
}