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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int MAX_LONGS ; 
 int MAX_LOOPS ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int FUNC7 (int,long*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct sockaddr_in sin, long seed)
{
	long buffer[MAX_LONGS];
	ssize_t len;
	int i, j, sock;

	FUNC9(seed);

	sock = FUNC8(PF_INET, SOCK_STREAM, 0);
	if (sock == -1)
		FUNC2(-1, "socket: %s", FUNC10(errno));

	if (FUNC1(sock, (struct sockaddr *) &sin, sizeof(sin)) == -1)
		FUNC2(-1, "connect: %s", FUNC10(errno));

	for (j = 0; j < MAX_LOOPS; j++) {
		for (i = 0; i < MAX_LONGS; i++) {
			FUNC4(buffer, i);
			len = FUNC7(sock, buffer, i * sizeof(long), 0);
			if (len == -1) {
				FUNC6("%d bytes written of %d expected\n",
				    len, i * sizeof(long));
				FUNC3(stdout);
				FUNC5("send");
				goto done;
			}
		}
	}

done:
	FUNC0(sock);
}