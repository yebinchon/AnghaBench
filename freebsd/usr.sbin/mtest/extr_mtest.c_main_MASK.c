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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ EAFNOSUPPORT ; 
 int /*<<< orphan*/  EPROTONOSUPPORT ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int LINE_LENGTH ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC12 (char*,char) ; 

int
FUNC13(int argc, char **argv)
{
	char	 line[LINE_LENGTH];
	char	*p;
	int	 i, s, s6;

	s = -1;
	s6 = -1;
#ifdef INET
	s = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
	if (s == -1 && errno != EAFNOSUPPORT)
		err(1, "can't open IPv4 socket");
#endif
#ifdef INET6
	s6 = socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP);
	if (s6 == -1 && errno != EAFNOSUPPORT)
		err(1, "can't open IPv6 socket");
#endif
	if (s == -1 && s6 == -1)
		FUNC2(1, EPROTONOSUPPORT, "can't open socket");

	if (argc < 2) {
		if (FUNC6(STDIN_FILENO)) {
			FUNC8("multicast membership test program; "
			    "enter ? for list of commands\n");
		}
		do {
			if (FUNC5(line, sizeof(line), stdin) != NULL) {
				if (line[0] != 'f')
					FUNC9(line, s, s6, stdin);
				else {
					/* Get the filename */
					for (i = 1; FUNC7(line[i]); i++);
					if ((p = (char*)FUNC12(line, '\n'))
					    != NULL)
						*p = '\0';
					FUNC10(&line[i], s, s6);
				}
			}
		} while (!FUNC4(stdin));
	} else {
		for (i = 1; i < argc; i++) {
			FUNC10(argv[i], s, s6);
		}
	}

	if (s != -1)
		FUNC0(s);
	if (s6 != -1)
		FUNC0(s6);

	FUNC3 (0);
}