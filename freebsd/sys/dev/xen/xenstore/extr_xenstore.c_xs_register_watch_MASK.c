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
typedef  int /*<<< orphan*/  watch ;
struct xs_watch {int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  registered_watches_lock; int /*<<< orphan*/  registered_watches; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct xs_watch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xs_watch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,long) ; 
 TYPE_1__ xs ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 

int
FUNC8(struct xs_watch *watch)
{
	/* Pointer in ascii is the token. */
	char token[sizeof(watch) * 2 + 1];
	int error;

	FUNC6(token, "%lX", (long)watch);

	FUNC4(&xs.registered_watches_lock);
	FUNC0(FUNC3(token) == NULL, ("watch already registered"));
	FUNC1(&xs.registered_watches, watch, list);
	FUNC5(&xs.registered_watches_lock);

	error = FUNC7(watch->node, token);

	/* Ignore errors due to multiple registration. */
	if (error == EEXIST)
		error = 0;

	if (error != 0) {
		FUNC4(&xs.registered_watches_lock);
		FUNC2(watch, list);
		FUNC5(&xs.registered_watches_lock);
	}

	return (error);
}