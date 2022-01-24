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
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int BUFFERSIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(int accept_sock)
{
	u_char buffer[BUFFERSIZE];
	ssize_t len, recvlen, sofar;
	int s;

	s = FUNC0(accept_sock, NULL, NULL);
	if (s < 0) {
		FUNC4("accept");
		return;
	}

	while (1) {
		recvlen = FUNC2(s, buffer, BUFFERSIZE, 0);
		if (recvlen < 0 || recvlen == 0) {
			FUNC1(s);
			return;
		}
		sofar = 0;
		while (sofar < recvlen) {
			len = FUNC3(s, buffer + sofar, recvlen - sofar, 0);
			if (len < 0) {
				FUNC1(s);
				return;
			}
			sofar += len;
		}
	}
}