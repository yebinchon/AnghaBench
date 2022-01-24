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
typedef  int /*<<< orphan*/  remoteaddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int PORT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct sockaddr*,int) ; 
 int errno ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char **argv)
{

	int ch, cli_sock, count = 0;
	int port = PORT;
	struct sockaddr_in remoteaddr;

	while ((ch = FUNC4(argc, argv, "p:")) != -1) {
		switch (ch) {
		case 'p':
			port = FUNC0(optarg);
			break;
		case 'h':
		default:
			FUNC8();
		}
	}

	FUNC1(&remoteaddr, sizeof(remoteaddr));
	remoteaddr.sin_len = sizeof(remoteaddr);
	remoteaddr.sin_family = AF_INET;
	remoteaddr.sin_port = FUNC5(port);
	remoteaddr.sin_addr.s_addr = INADDR_ANY;

	cli_sock = FUNC7(AF_INET, SOCK_STREAM, 0);

	while ((cli_sock = FUNC3(cli_sock, (struct sockaddr *)&remoteaddr,
				   sizeof(remoteaddr))) >= 0) {
		count++;
		FUNC2(cli_sock);
		cli_sock = FUNC7(AF_INET, SOCK_STREAM, 0);
	}

	FUNC6("Exiting at %d with errno %d\n", count, errno);

}