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
struct runtime_env {int dummy; } ;
struct query_state {int dummy; } ;
struct kevent {int /*<<< orphan*/  ident; scalar_t__ udata; } ;
struct configuration {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct kevent*,struct runtime_env*,struct configuration*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct query_state*) ; 

__attribute__((used)) static void
FUNC4(struct kevent *event_data, struct runtime_env *env,
	struct configuration *config)
{
	struct query_state	*qstate;

	FUNC0(process_timer_event);
	qstate = (struct query_state *)event_data->udata;
	FUNC3(qstate);
	FUNC2(event_data->ident);
	FUNC1(process_timer_event);
}