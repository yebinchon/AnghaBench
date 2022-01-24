#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct harvest_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ra_event_processor ) (struct harvest_event*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct harvest_event*,int) ; 
 TYPE_1__* p_random_alg_context ; 
 int /*<<< orphan*/  FUNC3 (struct harvest_event*) ; 

__attribute__((used)) static __inline void
FUNC4(struct harvest_event *event)
{
#if defined(RANDOM_LOADABLE)
	RANDOM_CONFIG_S_LOCK();
	if (p_random_alg_context)
#endif
	p_random_alg_context->ra_event_processor(event);
#if defined(RANDOM_LOADABLE)
	RANDOM_CONFIG_S_UNLOCK();
#endif
	FUNC2(event, sizeof(*event));
}