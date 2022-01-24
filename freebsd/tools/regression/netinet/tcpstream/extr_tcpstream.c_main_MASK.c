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
struct sockaddr_in {int sin_len; void* sin_port; TYPE_1__ sin_addr; void* sin_family; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 void* AF_INET ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (long) ; 
 int FUNC3 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_in,long) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_in,long) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int
FUNC10(int argc, char *argv[])
{
	struct sockaddr_in sin;
	long port, seed;
	char *dummy;

	if (argc < 2)
		FUNC9();
	if (FUNC4(argv[1], "client") == 0) {
		if (argc != 5)
			FUNC9();

		FUNC0(&sin, sizeof(sin));
		sin.sin_len = sizeof(sin);
		sin.sin_family = AF_INET;

		if (FUNC3(argv[2], &sin.sin_addr) != 1)
			FUNC1(-1, "%s: %s", argv[2], FUNC5(EINVAL));

		port = FUNC6(argv[3], &dummy, 10);
		if (port < 1 || port > 65535 || *dummy != '\0')
			FUNC9();
		sin.sin_port = FUNC2(port);

		seed = FUNC6(argv[4], &dummy, 10);
		if (*dummy != '\0')
			FUNC9();

		FUNC7(sin, seed);

	} else if (FUNC4(argv[1], "server") == 0) {
		if (argc != 4)
			FUNC9();

		FUNC0(&sin, sizeof(sin));
		sin.sin_len = sizeof(sin);
		sin.sin_family = AF_INET;
		sin.sin_addr.s_addr = INADDR_ANY;

		port = FUNC6(argv[2], &dummy, 10);
		if (port < 1 || port > 65535 || *dummy != '\0')
			FUNC9();
		sin.sin_port = FUNC2(port);

		seed = FUNC6(argv[3], &dummy, 10);
		if (*dummy != '\0')
			FUNC9();

		FUNC8(sin, seed);
	} else
		FUNC9();

	return (0);
}