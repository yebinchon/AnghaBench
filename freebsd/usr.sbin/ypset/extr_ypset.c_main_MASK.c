#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (struct sockaddr_in*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct hostent* FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 

int
FUNC11(int argc, char *argv[])
{
	struct sockaddr_in sin;
	struct hostent *hent;
	char *domainname;
	int c;

	FUNC10(&domainname);

	FUNC2(&sin, sizeof sin);
	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC7(INADDR_LOOPBACK);

	while ((c = FUNC6(argc, argv, "h:d:")) != -1)
		switch (c) {
		case 'd':
			domainname = optarg;
			break;
		case 'h':
			if (FUNC8(optarg, &sin.sin_addr) == 0) {
				hent = FUNC5(optarg);
				if (hent == NULL)
					FUNC3(1, "host %s unknown\n", optarg);
				FUNC0(hent->h_addr, &sin.sin_addr,
				    sizeof(sin.sin_addr));
			}
			break;
		default:
			FUNC9();
		}

	if (optind + 1 != argc)
		FUNC9();

	if (FUNC1(&sin, domainname, argv[optind]))
		FUNC4(1);
	FUNC4(0);
}