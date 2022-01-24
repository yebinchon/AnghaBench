#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* server_p ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {int maxfd; TYPE_5__* fdidx; TYPE_5__* req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void
FUNC4(server_p srv)
{
	int	fd;

	FUNC0(srv != NULL);

	for (fd = 0; fd < srv->maxfd + 1; fd ++)
		if (srv->fdidx[fd].valid)
			FUNC3(srv, fd);

	FUNC1(srv->req);
	FUNC1(srv->fdidx);

	FUNC2(srv, 0, sizeof(*srv));
}