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
struct addrinfo {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AI_PASSIVE ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(char *arg, const char *def_port, struct addrinfo **ai)
{
	struct addrinfo hints;
	char *str, *addr, *ch;
	const char *port;
	int error, colons = 0;

	str = arg = FUNC3(arg);
	if (arg[0] == '[') {
		/*
		 * IPv6 address in square brackets, perhaps with port.
		 */
		arg++;
		addr = FUNC4(&arg, "]");
		if (arg == NULL) {
			FUNC0(str);
			return (1);
		}
		if (arg[0] == '\0') {
			port = def_port;
		} else if (arg[0] == ':') {
			port = arg + 1;
		} else {
			FUNC0(str);
			return (1);
		}
	} else {
		/*
		 * Either IPv6 address without brackets - and without
		 * a port - or IPv4 address.  Just count the colons.
		 */
		for (ch = arg; *ch != '\0'; ch++) {
			if (*ch == ':')
				colons++;
		}
		if (colons > 1) {
			addr = arg;
			port = def_port;
		} else {
			addr = FUNC4(&arg, ":");
			if (arg == NULL)
				port = def_port;
			else
				port = arg;
		}
	}

	FUNC2(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_PASSIVE;
	error = FUNC1(addr, port, &hints, ai);
	FUNC0(str);
	return ((error != 0) ? 1 : 0);
}