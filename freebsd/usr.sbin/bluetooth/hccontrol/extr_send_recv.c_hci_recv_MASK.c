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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  ng_hci_event_pkt_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int ERROR ; 
 scalar_t__ ETIMEDOUT ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int FUNC4 (int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  timeout ; 

int
FUNC6(int s, char *buffer, int *size)
{
	struct timeval	tv;
	fd_set		rfd;
	int		n;

	FUNC3(buffer != NULL);
	FUNC3(size != NULL);
	FUNC3(*size > sizeof(ng_hci_event_pkt_t));

again:
	FUNC2(&rfd);
	FUNC1(s, &rfd);

	tv.tv_sec = timeout;
	tv.tv_usec = 0;

	n = FUNC5(s + 1, &rfd, NULL, NULL, &tv);
	if (n <= 0) {
		if (n < 0) {
			if (errno == EINTR)
				goto again;
		} else
			errno = ETIMEDOUT;

		return (ERROR);
	}

	FUNC3(FUNC0(s, &rfd));

	n = FUNC4(s, buffer, *size, 0);
	if (n < 0)
		return (ERROR);

	*size = n;

	return (OK);
}