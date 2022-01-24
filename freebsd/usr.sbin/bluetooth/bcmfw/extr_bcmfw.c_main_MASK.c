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

/* Variables and functions */
 int /*<<< orphan*/  BCMFW ; 
 int LOG_NDELAY ; 
 int LOG_PERROR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  LOG_USER ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* optarg ; 

int
FUNC7(int argc, char *argv[])
{
	char	*name = NULL, *md = NULL, *fw = NULL;
	int	 x;

	while ((x = FUNC5(argc, argv, "f:hn:m:")) != -1) {
		switch (x) {
		case 'f': /* firmware file */
			fw = optarg;
			break;

		case 'n': /* name */
			name = optarg;
			break;

		case 'm': /* Mini-driver */
			md = optarg;
			break;

		case 'h':
		default:
			FUNC2();
			/* NOT REACHED */
		}
	}

	if (name == NULL || md == NULL || fw == NULL)
		FUNC2();
		/* NOT REACHED */

	FUNC6(BCMFW, LOG_NDELAY|LOG_PERROR|LOG_PID, LOG_USER);

	if (FUNC0(name) < 0)
		FUNC4(1);

	if (FUNC1(name, md, fw) < 0)
		FUNC4(1);

	FUNC3();

	return (0);
}