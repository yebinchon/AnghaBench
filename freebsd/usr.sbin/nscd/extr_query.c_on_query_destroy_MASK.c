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
struct query_state {int /*<<< orphan*/  request; int /*<<< orphan*/  response; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct query_state*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct query_state *qstate)
{

	FUNC0(on_query_destroy);
	FUNC2(&qstate->response);
	FUNC2(&qstate->request);
	FUNC1(on_query_destroy);
}