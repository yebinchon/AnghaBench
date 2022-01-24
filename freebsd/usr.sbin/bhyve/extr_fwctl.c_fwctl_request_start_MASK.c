#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* op_start ) (scalar_t__) ;} ;
struct TYPE_4__ {scalar_t__ req_size; size_t req_type; TYPE_2__* req_op; } ;

/* Variables and functions */
 size_t OP_MAX ; 
 TYPE_2__ errop_info ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__** ops ; 
 TYPE_1__ rinfo ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3(void)
{
	int err;

	/* Data size doesn't include header */
	rinfo.req_size -= 12;

	rinfo.req_op = &errop_info;
	if (rinfo.req_type <= OP_MAX && ops[rinfo.req_type] != NULL)
		rinfo.req_op = ops[rinfo.req_type];

	err = (*rinfo.req_op->op_start)(rinfo.req_size);

	if (err) {
		FUNC0(err);
		rinfo.req_op = &errop_info;
	}

	/* Catch case of zero-length message here */
	if (rinfo.req_size == 0) {
		FUNC1();
		return (1);
	}

	return (0);
}