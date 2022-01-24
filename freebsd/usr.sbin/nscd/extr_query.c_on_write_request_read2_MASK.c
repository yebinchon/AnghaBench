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
struct query_state {scalar_t__ (* read_func ) (struct query_state*,scalar_t__,scalar_t__) ;int /*<<< orphan*/  process_func; scalar_t__ kevent_watermark; scalar_t__ eid_str_length; int /*<<< orphan*/  request; } ;
struct cache_write_request {scalar_t__ entry_length; scalar_t__ cache_key_size; scalar_t__ data_size; scalar_t__ data; scalar_t__ cache_key; scalar_t__ entry; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 struct cache_write_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_negative_write_request_process ; 
 int /*<<< orphan*/  on_write_request_process ; 
 scalar_t__ FUNC3 (struct query_state*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (struct query_state*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct query_state*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct query_state *qstate)
{
	struct cache_write_request	*write_request;
	ssize_t	result;

	FUNC0(on_write_request_read2);
	write_request = FUNC2(&qstate->request);

	result = qstate->read_func(qstate, write_request->entry,
		write_request->entry_length);
	result += qstate->read_func(qstate, write_request->cache_key +
		qstate->eid_str_length, write_request->cache_key_size);
	if (write_request->data_size != 0)
		result += qstate->read_func(qstate, write_request->data,
			write_request->data_size);

	if (result != (ssize_t)qstate->kevent_watermark) {
		FUNC1(on_write_request_read2);
		return (-1);
	}
	write_request->cache_key_size += qstate->eid_str_length;

	qstate->kevent_watermark = 0;
	if (write_request->data_size != 0)
		qstate->process_func = on_write_request_process;
	else
	    	qstate->process_func = on_negative_write_request_process;
	FUNC1(on_write_request_read2);
	return (0);
}