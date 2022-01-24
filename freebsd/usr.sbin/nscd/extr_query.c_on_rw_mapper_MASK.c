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
struct query_state {int kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int /*<<< orphan*/  process_func; } ;
typedef  int ssize_t ;

/* Variables and functions */
#define  CET_READ_REQUEST 129 
#define  CET_WRITE_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct query_state*)) ; 
 int /*<<< orphan*/  on_read_request_read1 ; 
 int /*<<< orphan*/  on_write_request_read1 ; 
 int FUNC2 (struct query_state*,int*,int) ; 

__attribute__((used)) static int
FUNC3(struct query_state *qstate)
{
	ssize_t	result;
	int	elem_type;

	FUNC0(on_rw_mapper);
	if (qstate->kevent_watermark == 0) {
		qstate->kevent_watermark = sizeof(int);
	} else {
		result = qstate->read_func(qstate, &elem_type, sizeof(int));
		if (result != sizeof(int)) {
			FUNC1(on_rw_mapper);
			return (-1);
		}

		switch (elem_type) {
		case CET_WRITE_REQUEST:
			qstate->kevent_watermark = sizeof(size_t);
			qstate->process_func = on_write_request_read1;
		break;
		case CET_READ_REQUEST:
			qstate->kevent_watermark = sizeof(size_t);
			qstate->process_func = on_read_request_read1;
		break;
		default:
			FUNC1(on_rw_mapper);
			return (-1);
		break;
		}
	}
	FUNC1(on_rw_mapper);
	return (0);
}