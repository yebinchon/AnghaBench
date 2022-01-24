#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* server_p ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  fdset ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_8__ {scalar_t__ maxfd; TYPE_1__* fdidx; int /*<<< orphan*/  fdset; } ;
struct TYPE_7__ {scalar_t__ server; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int32_t
FUNC9(server_p srv)
{
	fd_set	fdset;
	int32_t	n, fd;

	FUNC1(srv != NULL);

	/* Copy cached version of the fd set and call select */
	FUNC3(&fdset, &srv->fdset, sizeof(fdset));
	n = FUNC4(srv->maxfd + 1, &fdset, NULL, NULL, NULL);
	if (n < 0) {
		if (errno == EINTR)
			return (0);

		FUNC2("Could not select(%d, %p). %s (%d)",
			srv->maxfd + 1, &fdset, FUNC8(errno), errno);

		return (-1);
	}

	/* Process  descriptors */
	for (fd = 0; fd < srv->maxfd + 1 && n > 0; fd ++) {
		if (!FUNC0(fd, &fdset))
			continue;

		FUNC1(srv->fdidx[fd].valid);
		n --;

		if (srv->fdidx[fd].server)
			FUNC5(srv, fd);
		else if (FUNC7(srv, fd) != 0)
			FUNC6(srv, fd);
	}

	return (0);
	
}