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
struct connection {int dummy; } ;
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int AI_ADDRCONFIG ; 
 int AI_NUMERICSERV ; 
 int AI_PASSIVE ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection const*,char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static void
FUNC7(const struct connection *conn, const char *address,
    struct addrinfo **ai, bool initiator_side)
{
	struct addrinfo hints;
	char *arg, *addr, *ch;
	const char *port;
	int error, colons = 0;

	arg = FUNC0(address);

	if (arg[0] == '\0') {
		FUNC1(conn, "empty address");
		FUNC4(1, "empty address");
	}
	if (arg[0] == '[') {
		/*
		 * IPv6 address in square brackets, perhaps with port.
		 */
		arg++;
		addr = FUNC6(&arg, "]");
		if (arg == NULL) {
			FUNC1(conn, "malformed address");
			FUNC4(1, "malformed address %s", address);
		}
		if (arg[0] == '\0') {
			port = NULL;
		} else if (arg[0] == ':') {
			port = arg + 1;
		} else {
			FUNC1(conn, "malformed address");
			FUNC4(1, "malformed address %s", address);
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
			port = NULL;
		} else {
			addr = FUNC6(&arg, ":");
			if (arg == NULL)
				port = NULL;
			else
				port = arg;
		}
	}

	if (port == NULL && !initiator_side)
		port = "3260";

	FUNC5(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = AI_ADDRCONFIG | AI_NUMERICSERV;
	if (initiator_side)
		hints.ai_flags |= AI_PASSIVE;

	error = FUNC3(addr, port, &hints, ai);
	if (error != 0) {
		FUNC1(conn, FUNC2(error));
		FUNC4(1, "getaddrinfo for %s failed: %s",
		    address, FUNC2(error));
	}
}