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
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sin_port; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  s_in ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGPIPE ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  hand ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* FUNC5 (TYPE_1__) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char *argv[])
{
	int s, dude;
	struct sockaddr_in s_in;
	int len;
	int raw;

	FUNC7(&s_in, 0, sizeof(s_in));
	s_in.sin_family = PF_INET;
	s_in.sin_port = FUNC4(666);
	s_in.sin_addr.s_addr = INADDR_ANY;

	if ((raw = FUNC10(PF_INET, SOCK_RAW, 0)) == -1)
		FUNC2(1, "socket()");

	if ((s = FUNC10(s_in.sin_family, SOCK_STREAM, IPPROTO_TCP)) == -1)
		FUNC2(1, "socket()");

	if (FUNC1(s, (struct sockaddr*)&s_in, sizeof(s_in)) == -1)
		FUNC2(1, "bind()");

	if (FUNC6(s, 5) == -1)
		FUNC2(1, "listen()");

	if (FUNC9(SIGPIPE, hand) == SIG_ERR)
		FUNC2(1, "signal()");

	while (1) {
		len = sizeof(s_in);
		dude = FUNC0(s, (struct sockaddr*)&s_in, &len);
		if (dude == -1)
			FUNC2(1, "accept()");

		FUNC8("Got dude %s\n", FUNC5(s_in.sin_addr));
		FUNC3(dude, raw);
		FUNC8("Done\n");
	}
}