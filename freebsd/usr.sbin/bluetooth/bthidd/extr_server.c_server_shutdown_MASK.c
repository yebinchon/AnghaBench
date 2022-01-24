#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* bthid_server_p ;
struct TYPE_4__ {int /*<<< orphan*/  sessions; int /*<<< orphan*/  intr; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  cons; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(bthid_server_p srv)
{
	FUNC2(srv != NULL);

	FUNC3(srv->cons);
	FUNC3(srv->ctrl);
	FUNC3(srv->intr);

	while (!FUNC0(&srv->sessions))
		FUNC5(FUNC1(&srv->sessions));

	FUNC4(srv, 0, sizeof(*srv));
}