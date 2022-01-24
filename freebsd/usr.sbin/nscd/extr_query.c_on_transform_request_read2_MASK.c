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
struct query_state {scalar_t__ (* read_func ) (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  process_func; scalar_t__ kevent_watermark; int /*<<< orphan*/  request; } ;
struct cache_transform_request {int /*<<< orphan*/  entry_length; int /*<<< orphan*/  entry; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 struct cache_transform_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_transform_request_process ; 
 scalar_t__ FUNC3 (struct query_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct query_state *qstate)
{
	struct cache_transform_request	*transform_request;
	ssize_t	result;

	FUNC0(on_transform_request_read2);
	transform_request = FUNC2(&qstate->request);

	result = qstate->read_func(qstate, transform_request->entry,
		transform_request->entry_length);

	if (result != (ssize_t)qstate->kevent_watermark) {
		FUNC1(on_transform_request_read2);
		return (-1);
	}

	qstate->kevent_watermark = 0;
	qstate->process_func = on_transform_request_process;

	FUNC1(on_transform_request_read2);
	return (0);
}