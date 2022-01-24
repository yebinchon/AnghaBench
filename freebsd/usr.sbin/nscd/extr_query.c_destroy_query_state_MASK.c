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
struct query_state {int /*<<< orphan*/  (* destroy_func ) (struct query_state*) ;struct query_state* io_buffer; struct query_state* eid_str; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (struct query_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct query_state*) ; 

void
FUNC4(struct query_state *qstate)
{

	FUNC0(destroy_query_state);
	if (qstate->eid_str != NULL)
	    FUNC2(qstate->eid_str);

	if (qstate->io_buffer != NULL)
		FUNC2(qstate->io_buffer);

	qstate->destroy_func(qstate);
	FUNC2(qstate);
	FUNC1(destroy_query_state);
}