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
typedef  int /*<<< orphan*/  u_int32_t ;
struct addrinfo {int ai_family; void* ai_flags; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 void* AI_NUMERICHOST ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC2 (int const,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct addrinfo **ai, const char *bindhost, struct addrinfo hints)
{
	int ecode;
	u_int32_t host_addr[4];  /* IPv4 or IPv6 */
	const char *hostptr;

	if (bindhost == NULL || FUNC3("*", bindhost) == 0)
		hostptr = NULL;
	else
		hostptr = bindhost;

	if (hostptr != NULL) {
		switch (hints.ai_family) {
		case AF_INET:
			if (FUNC2(AF_INET, hostptr, host_addr) == 1) {
				hints.ai_flags = AI_NUMERICHOST;
			} else {
				if (FUNC2(AF_INET6, hostptr,
				    host_addr) == 1)
					return (1);
			}
			break;
		case AF_INET6:
			if (FUNC2(AF_INET6, hostptr, host_addr) == 1) {
				hints.ai_flags = AI_NUMERICHOST;
			} else {
				if (FUNC2(AF_INET, hostptr,
				    host_addr) == 1)
					return (1);
			}
			break;
		default:
			break;
		}
	}
	
	ecode = FUNC1(hostptr, "nfs", &hints, ai);
	if (ecode != 0) {
		FUNC4(LOG_ERR, "getaddrinfo %s: %s", bindhost,
		    FUNC0(ecode));
		return (1);
	}
	return (0);
}