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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int BUFFER ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct sockaddr_in *sin, char *path, int quiet)
{
	u_char buffer[BUFFER];
	ssize_t len;
	size_t sofar;
	int sock;

	sock = FUNC5(PF_INET, SOCK_STREAM, 0);
	if (sock < 0) {
		if (!quiet)
			FUNC7("socket(PF_INET, SOCK_STREAM)");
		return (-1);
	}

	/* XXX: Mark non-blocking. */

	if (FUNC1(sock, (struct sockaddr *)sin, sizeof(*sin)) < 0) {
		if (!quiet)
			FUNC7("connect");
		FUNC0(sock);
		return (-1);
	}

	/* XXX: select for connection. */

	/* Send a request. */
	FUNC4(buffer, BUFFER, "GET %s HTTP/1.0\n\n", path);
	sofar = 0;
	while (sofar < FUNC6(buffer)) {
		len = FUNC3(sock, buffer, FUNC6(buffer), 0);
		if (len < 0) {
			if (!quiet)
				FUNC7("send");
			FUNC0(sock);
			return (-1);
		}
		if (len == 0) {
			if (!quiet)
				FUNC8("send: len == 0");
		}
		sofar += len;
	}

	/* Read until done.  Not very smart. */
	while (1) {
		len = FUNC2(sock, buffer, BUFFER, 0);
		if (len < 0) {
			if (!quiet)
				FUNC7("recv");
			FUNC0(sock);
			return (-1);
		}
		if (len == 0)
			break;
	}

	FUNC0(sock);
	return (0);
}