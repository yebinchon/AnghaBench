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
struct pollfd {int /*<<< orphan*/  events; scalar_t__ fd; } ;
struct fifolog_writer {int dummy; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  POLLIN ; 
 unsigned int Z_BEST_COMPRESSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fifolog_writer*) ; 
 struct fifolog_writer* FUNC4 () ; 
 char* FUNC5 (struct fifolog_writer*,char* const,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fifolog_writer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char* const*,char*) ; 
 scalar_t__ FUNC9 (char) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int FUNC10 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC11 (char*,char) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char * const *argv)
{
	struct fifolog_writer *f;
	const char *es;
	struct pollfd pfd[1];
	char buf[BUFSIZ], *p;
	int i, c;
	unsigned w_opt = 10;
	unsigned s_opt = 60;
	unsigned z_opt = Z_BEST_COMPRESSION;

	while ((c = FUNC8(argc, argv, "w:s:z:")) != -1) {
		switch(c) {
		case 'w':
			w_opt = FUNC12(optarg, NULL, 0);
			break;
		case 's':
			s_opt = FUNC12(optarg, NULL, 0);
			break;
		case 'z':
			z_opt = FUNC12(optarg, NULL, 0);
			break;
		default:
			FUNC13();
		}
	}
	argc -= optind;
	argv += optind;
	if (argc != 1)
		FUNC13();

	if (z_opt > 9)
		FUNC13();

	if (w_opt > s_opt)
		FUNC13();

	f = FUNC4();
	FUNC0(f != NULL);

	es = FUNC5(f, argv[0], w_opt, s_opt, z_opt);
	if (es)
		FUNC1(1, "Error: %s", es);

	while (1) {
		pfd[0].fd = 0;
		pfd[0].events = POLLIN;
		i = FUNC10(pfd, 1, 1000);
		if (i == 1) {
			if (FUNC2(buf, sizeof buf, stdin) == NULL)
				break;
			p = FUNC11(buf, '\0');
			FUNC0(p != NULL);
			while (p > buf && FUNC9(p[-1]))
				p--;
			*p = '\0';
			if (*buf != '\0')
				FUNC7(f, 0, 0, buf, 0);
		} else if (i == 0)
			FUNC6(f, 0);
	}
	FUNC3(f);
	return (0);
}