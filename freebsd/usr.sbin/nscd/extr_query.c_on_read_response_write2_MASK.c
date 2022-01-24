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
struct query_state {scalar_t__ (* write_func ) (struct query_state*,int /*<<< orphan*/ ,scalar_t__) ;int kevent_watermark; int /*<<< orphan*/  process_func; int /*<<< orphan*/  kevent_filter; int /*<<< orphan*/  response; int /*<<< orphan*/  request; } ;
struct cache_read_response {scalar_t__ data_size; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_READ ; 
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cache_read_response* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_rw_mapper ; 
 scalar_t__ FUNC4 (struct query_state*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct query_state *qstate)
{
	struct cache_read_response	*read_response;
	ssize_t	result;

	FUNC0(on_read_response_write2);
	read_response = FUNC3(&qstate->response);
	if (read_response->data_size > 0) {
		result = qstate->write_func(qstate, read_response->data,
			read_response->data_size);
		if (result != (ssize_t)qstate->kevent_watermark) {
			FUNC1(on_read_response_write2);
			return (-1);
		}
	}

	FUNC2(&qstate->request);
	FUNC2(&qstate->response);

	qstate->kevent_watermark = sizeof(int);
	qstate->kevent_filter = EVFILT_READ;
	qstate->process_func = on_rw_mapper;
	FUNC1(on_read_response_write2);
	return (0);
}