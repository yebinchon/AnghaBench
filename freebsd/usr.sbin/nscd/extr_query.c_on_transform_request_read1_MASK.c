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
struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,scalar_t__*,int) ;int /*<<< orphan*/  process_func; int /*<<< orphan*/  request; } ;
struct cache_transform_request {scalar_t__ entry_length; scalar_t__ transformation_type; int /*<<< orphan*/ * entry; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CET_TRANSFORM_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int (*) (struct query_state*)) ; 
 scalar_t__ TT_ALL ; 
 scalar_t__ TT_USER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,scalar_t__) ; 
 struct cache_transform_request* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_transform_request_process ; 
 int /*<<< orphan*/  on_transform_request_read2 ; 
 int FUNC7 (struct query_state*,scalar_t__*,int) ; 
 int FUNC8 (struct query_state*,scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC9(struct query_state *qstate)
{
	struct cache_transform_request *transform_request;
	ssize_t	result;

	FUNC1(on_transform_request_read1);
	if (qstate->kevent_watermark == 0)
		qstate->kevent_watermark = sizeof(size_t) + sizeof(int);
	else {
		FUNC6(&qstate->request, CET_TRANSFORM_REQUEST);
		transform_request =
			FUNC5(&qstate->request);

		result = qstate->read_func(qstate,
	    		&transform_request->entry_length, sizeof(size_t));
		result += qstate->read_func(qstate,
	    		&transform_request->transformation_type, sizeof(int));

		if (result != sizeof(size_t) + sizeof(int)) {
			FUNC2(on_transform_request_read1);
			return (-1);
		}

		if ((transform_request->transformation_type != TT_USER) &&
		    (transform_request->transformation_type != TT_ALL)) {
			FUNC2(on_transform_request_read1);
			return (-1);
		}

		if (transform_request->entry_length != 0) {
			if (FUNC0(transform_request->entry_length)) {
				FUNC2(on_transform_request_read1);
				return (-1);
			}

			transform_request->entry = FUNC4(1,
				transform_request->entry_length + 1);
			FUNC3(transform_request->entry != NULL);

			qstate->process_func = on_transform_request_read2;
		} else
			qstate->process_func = on_transform_request_process;

		qstate->kevent_watermark = transform_request->entry_length;
	}

	FUNC2(on_transform_request_read1);
	return (0);
}