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
struct query_state {int (* write_func ) (struct query_state*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/ * process_func; scalar_t__ kevent_watermark; int /*<<< orphan*/  response; int /*<<< orphan*/  request; } ;
struct cache_transform_response {int /*<<< orphan*/  error_code; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cache_transform_response* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct query_state*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(struct query_state *qstate)
{
	struct cache_transform_response	*transform_response;
	ssize_t	result;

	FUNC0(on_transform_response_write1);
	transform_response = FUNC3(&qstate->response);
	result = qstate->write_func(qstate, &transform_response->error_code,
		sizeof(int));
	if (result != sizeof(int)) {
		FUNC1(on_transform_response_write1);
		return (-1);
	}

	FUNC2(&qstate->request);
	FUNC2(&qstate->response);

	qstate->kevent_watermark = 0;
	qstate->process_func = NULL;
	FUNC1(on_transform_response_write1);
	return (0);
}