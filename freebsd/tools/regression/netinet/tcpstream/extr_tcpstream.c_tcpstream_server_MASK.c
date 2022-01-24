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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  other_sin ;

/* Variables and functions */
 int MAX_LONGS ; 
 int MAX_LOOPS ; 
 int /*<<< orphan*/  MSG_WAITALL ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 scalar_t__ FUNC3 (long*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int FUNC12 (int,long*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (long) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(struct sockaddr_in sin, long seed)
{
	int i, j, listen_sock, accept_sock;
	struct sockaddr_in other_sin;
	long buffer[MAX_LONGS];
	socklen_t addrlen;
	ssize_t len;

	int input_byte_counter;

	listen_sock = FUNC13(PF_INET, SOCK_STREAM, 0);
	if (listen_sock == -1)
		FUNC5(-1, "socket: %s", FUNC15(errno));

	if (FUNC1(listen_sock, (struct sockaddr *)&sin, sizeof(sin)) == -1)
		FUNC5(-1, "bind: %s", FUNC15(errno));

	if (FUNC8(listen_sock, -1) == -1)
		FUNC5(-1, "listen: %s", FUNC15(errno));

	while (1) {
		FUNC2(&other_sin, sizeof(other_sin));
		addrlen = sizeof(other_sin);

		accept_sock = FUNC0(listen_sock, (struct sockaddr *)
		    &other_sin, &addrlen);
		if (accept_sock == -1) {
			FUNC10("accept");
			continue;
		}
		FUNC11("connection opened from %s:%d\n",
		    FUNC7(other_sin.sin_addr), FUNC9(other_sin.sin_port));
		input_byte_counter = 0;

		FUNC14(seed);

		for (j = 0; j < MAX_LOOPS; j++) {
			for (i = 0; i < MAX_LONGS; i++) {
				len = FUNC12(accept_sock, buffer,
				    i * sizeof(long), MSG_WAITALL);
				if (len != i * sizeof(long)) {
					FUNC10("recv");
					goto done;
				}
				if (FUNC3(buffer, i) == 0) {
					FUNC6(stderr,
    "Corruption in block beginning %d and ending %d\n", input_byte_counter,
    input_byte_counter + len);
					FUNC6(stderr,
    "Block size %d\n", i * sizeof(long));
					goto done;
				}
				input_byte_counter += len;
			}
		}
done:
		FUNC11("connection closed\n");
		FUNC4(accept_sock);
	}
}