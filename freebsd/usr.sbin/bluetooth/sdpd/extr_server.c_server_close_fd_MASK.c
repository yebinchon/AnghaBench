#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* server_p ;
typedef  TYPE_2__* provider_p ;
typedef  size_t int32_t ;
struct TYPE_11__ {int /*<<< orphan*/ * rsp; int /*<<< orphan*/  valid; } ;
struct TYPE_10__ {size_t fd; } ;
struct TYPE_9__ {size_t maxfd; TYPE_8__* fdidx; int /*<<< orphan*/  fdset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC6 () ; 
 TYPE_2__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(server_p srv, int32_t fd)
{
	provider_p	provider = NULL, provider_next = NULL;

	FUNC2(FUNC1(fd, &srv->fdset));
	FUNC2(srv->fdidx[fd].valid);

	FUNC3(fd);

	FUNC0(fd, &srv->fdset);
	if (fd == srv->maxfd)
		srv->maxfd --;

	if (srv->fdidx[fd].rsp != NULL)
		FUNC4(srv->fdidx[fd].rsp);

	FUNC5(&srv->fdidx[fd], 0, sizeof(srv->fdidx[fd]));

	for (provider = FUNC6();
	     provider != NULL;
	     provider = provider_next) {
		provider_next = FUNC7(provider);

		if (provider->fd == fd)
			FUNC8(provider);
	}
}