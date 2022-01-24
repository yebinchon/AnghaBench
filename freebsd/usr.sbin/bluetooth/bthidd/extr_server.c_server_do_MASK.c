#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wfdset ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  rfdset ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  TYPE_1__* bthid_server_p ;
struct TYPE_6__ {scalar_t__ maxfd; scalar_t__ ctrl; scalar_t__ intr; int /*<<< orphan*/  wfdset; int /*<<< orphan*/  rfdset; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

int32_t
FUNC9(bthid_server_p srv)
{
	struct timeval	tv;
	fd_set		rfdset, wfdset;
	int32_t		n, fd;

	FUNC1(srv != NULL);

	tv.tv_sec = 1;
	tv.tv_usec = 0;

	/* Copy cached version of the fd sets and call select */
	FUNC3(&rfdset, &srv->rfdset, sizeof(rfdset));
	FUNC3(&wfdset, &srv->wfdset, sizeof(wfdset));

	n = FUNC4(srv->maxfd + 1, &rfdset, &wfdset, NULL, &tv);
	if (n < 0) {
		if (errno == EINTR)  
			return (0);

		FUNC8(LOG_ERR, "Could not select(%d, %p, %p). %s (%d)",
			srv->maxfd + 1, &rfdset, &wfdset, FUNC7(errno), errno);

		return (-1);
	}

	/* Process descriptors (if any) */
	for (fd = 0; fd < srv->maxfd + 1 && n > 0; fd ++) {
		if (FUNC0(fd, &rfdset)) {
			n --;

			if (fd == srv->ctrl || fd == srv->intr)
				FUNC5(srv, fd);
			else
				FUNC6(srv, fd);
		} else if (FUNC0(fd, &wfdset)) {
			n --;

			FUNC2(srv, fd);
		}
	}

	return (0);
}