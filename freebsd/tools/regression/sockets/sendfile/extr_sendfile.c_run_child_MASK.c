#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TEST_PORT ; 
 int /*<<< orphan*/  TEST_SECONDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ accept_socket ; 
 scalar_t__ FUNC2 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 scalar_t__ listen_socket ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct sockaddr_in sin;
	int rc = 0;

	listen_socket = FUNC12(PF_INET, SOCK_STREAM, 0);
	if (listen_socket < 0) {
		FUNC9("# socket: %s\n", FUNC13(errno));
		rc = -1;
	}

	if (!rc) {
		FUNC3(&sin, sizeof(sin));
		sin.sin_len = sizeof(sin);
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = FUNC6(INADDR_LOOPBACK);
		sin.sin_port = FUNC7(TEST_PORT);

		if (FUNC2(listen_socket, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
			FUNC9("# bind: %s\n", FUNC13(errno));
			rc = -1;
		}
	}

	if (!rc && FUNC8(listen_socket, -1) < 0) {
		FUNC9("# listen: %s\n", FUNC13(errno));
		rc = -1;
	}

	if (!rc) {
		accept_socket = FUNC1(listen_socket, NULL, NULL);	
		FUNC11(TEST_SECONDS);
		if (FUNC10() != 0)
			rc = -1;
	}

	FUNC4();
	if (accept_socket > 0)
		FUNC5(accept_socket);
	if (listen_socket > 0)
		FUNC5(listen_socket);

	FUNC0(rc);
}