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
struct proto_handler {int dummy; } ;
struct dll {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proto_handler*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct proto_handler* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dll*) ; 
 struct dll* FUNC4 () ; 

int
FUNC5(void)
{
	struct dll *t;
	struct proto_handler *p;

	/* Unload all modules then reload everything. */
	while ((p = FUNC2()) != NULL) {	
		FUNC0(p);
	}
	while ((t = FUNC4()) != NULL) {	
		FUNC1(t->handle);
		FUNC3(t);
	}
	return (1);
}