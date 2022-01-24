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
struct sockaddr {int /*<<< orphan*/  sa_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* FUNC2 (size_t,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7(int domain, const struct sockaddr *addr, int sds[],
    size_t nsds, int nconns)
{
	size_t i;
	int *acceptcnt;
	int csd, error, excnt, sd;

	/*
	 * We expect each listening socket to accept roughly nconns/nsds
	 * connections, but allow for some error.
	 */
	excnt = nconns / nsds / 8;
	acceptcnt = FUNC2(nsds, sizeof(*acceptcnt));
	FUNC0(acceptcnt != NULL, "calloc() failed: %s",
	    FUNC6(errno));

	while (nconns-- > 0) {
		sd = FUNC5(domain, SOCK_STREAM, 0);
		FUNC0(sd >= 0, "socket() failed: %s",
		    FUNC6(errno));

		error = FUNC4(sd, addr, addr->sa_len);
		FUNC0(error == 0, "connect() failed: %s",
		    FUNC6(errno));

		/*
		 * Poll the listening sockets.
		 */
		do {
			for (i = 0; i < nsds; i++) {
				csd = FUNC1(sds[i], NULL, NULL);
				if (csd < 0) {
					FUNC0(errno == EWOULDBLOCK ||
					    errno == EAGAIN,
					    "accept() failed: %s",
					    FUNC6(errno));
					continue;
				}

				error = FUNC3(csd);
				FUNC0(error == 0,
				    "close() failed: %s", FUNC6(errno));

				acceptcnt[i]++;
				break;
			}
		} while (i == nsds);

		error = FUNC3(sd);
		FUNC0(error == 0, "close() failed: %s",
		    FUNC6(errno));
	}

	for (i = 0; i < nsds; i++)
		FUNC0(acceptcnt[i] > excnt, "uneven balancing");
}