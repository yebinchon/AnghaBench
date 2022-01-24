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
struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,scalar_t__*,int) ;scalar_t__ eid_str_length; int /*<<< orphan*/  process_func; int /*<<< orphan*/  eid_str; int /*<<< orphan*/  request; } ;
struct cache_write_request {scalar_t__ entry_length; scalar_t__ cache_key_size; scalar_t__ data_size; int /*<<< orphan*/ * data; int /*<<< orphan*/ * cache_key; int /*<<< orphan*/ * entry; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CET_WRITE_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,scalar_t__) ; 
 struct cache_write_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  on_write_request_read2 ; 
 int FUNC8 (struct query_state*,scalar_t__*,int) ; 
 int FUNC9 (struct query_state*,scalar_t__*,int) ; 
 int FUNC10 (struct query_state*,scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC11(struct query_state *qstate)
{
	struct cache_write_request	*write_request;
	ssize_t	result;

	FUNC1(on_write_request_read1);
	if (qstate->kevent_watermark == 0)
		qstate->kevent_watermark = sizeof(size_t) * 3;
	else {
		FUNC6(&qstate->request, CET_WRITE_REQUEST);
		write_request = FUNC5(&qstate->request);

		result = qstate->read_func(qstate, &write_request->entry_length,
	    		sizeof(size_t));
		result += qstate->read_func(qstate,
	    		&write_request->cache_key_size, sizeof(size_t));
		result += qstate->read_func(qstate,
	    		&write_request->data_size, sizeof(size_t));

		if (result != sizeof(size_t) * 3) {
			FUNC2(on_write_request_read1);
			return (-1);
		}

		if (FUNC0(write_request->entry_length) ||
			FUNC0(write_request->cache_key_size) ||
			(FUNC0(write_request->data_size) &&
			(write_request->data_size != 0))) {
			FUNC2(on_write_request_read1);
			return (-1);
		}

		write_request->entry = FUNC4(1,
			write_request->entry_length + 1);
		FUNC3(write_request->entry != NULL);

		write_request->cache_key = FUNC4(1,
			write_request->cache_key_size +
			qstate->eid_str_length);
		FUNC3(write_request->cache_key != NULL);
		FUNC7(write_request->cache_key, qstate->eid_str,
			qstate->eid_str_length);

		if (write_request->data_size != 0) {
			write_request->data = FUNC4(1,
				write_request->data_size);
			FUNC3(write_request->data != NULL);
		}

		qstate->kevent_watermark = write_request->entry_length +
			write_request->cache_key_size +
			write_request->data_size;
		qstate->process_func = on_write_request_read2;
	}

	FUNC2(on_write_request_read1);
	return (0);
}