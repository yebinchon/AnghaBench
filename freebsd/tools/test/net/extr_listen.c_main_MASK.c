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
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  localaddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int LISTEN ; 
 int PORT ; 
 int RECV_LIMIT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, char **argv)
{

	int ch, srv_sock, cli_sock, recvd = 0;
	int port = PORT;
	int limit = LISTEN;
	struct sockaddr_in localaddr;

	while ((ch = FUNC6(argc, argv, "p:l:")) != -1) {
		switch (ch) {
		case 'p':
			port = FUNC1(optarg);
			break;
		case 'l':
			limit = FUNC1(optarg);
                     break;
		case 'h':
		default:
			FUNC11();
		}
	}

	FUNC3(&localaddr, sizeof(localaddr));
	localaddr.sin_len = sizeof(localaddr);
	localaddr.sin_family = AF_INET;
	localaddr.sin_port = FUNC7(port);
	localaddr.sin_addr.s_addr = INADDR_ANY;

	srv_sock = FUNC10(AF_INET, SOCK_STREAM, 0);

	if (FUNC2(srv_sock, (struct sockaddr *)&localaddr,
		 sizeof(struct sockaddr_in)) < 0)
		FUNC5(EX_OSERR, "Could not bind to INADDR_ANY:%d", port);
	
	if (FUNC8(srv_sock, limit) < 0)
		FUNC5(EX_OSERR, "Failed to listen with depth of %d\n", limit);
	
	while (((cli_sock = FUNC0(srv_sock, NULL, NULL)) >= 0)
	       && (recvd < RECV_LIMIT)) {
		FUNC4(cli_sock);
		recvd++;
	}

	FUNC8(srv_sock, 0);

	while (((cli_sock = FUNC0(srv_sock, NULL, NULL)) >= 0)
	    && (recvd <= (RECV_LIMIT + limit + 1))) {
		FUNC4(cli_sock);
		recvd++;
	}

	if (FUNC0(srv_sock, NULL, NULL) >= 0)
		FUNC9 ("Late connection at %d\n", recvd);
	else
		FUNC9("recvd %d\n", recvd);
}