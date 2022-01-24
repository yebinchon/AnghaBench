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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {void* sa_family; } ;
struct addrinfo {int ai_family; int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; TYPE_1__ sa; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_flags; } ;
typedef  struct addrinfo sockunion_t ;

/* Variables and functions */
 void* AF_UNSPEC ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int /*<<< orphan*/  EINVAL ; 
 int PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC8(sockunion_t *psu, sockunion_t *psu2,
    const char *str1, const char *str2, const char *str3)
{
	struct addrinfo		 hints;
	struct addrinfo		*res;
	uint32_t		 ifindex;
	int			 af, error;

	FUNC0(psu != NULL);
	FUNC0(str1 != NULL);
	FUNC0(str2 != NULL);

	af = AF_UNSPEC;

	ifindex = FUNC4(str2);
	if (ifindex == 0)
		return (0);

	FUNC6(&hints, 0, sizeof(struct addrinfo));
	hints.ai_flags = AI_NUMERICHOST;
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM;

	FUNC6(psu, 0, sizeof(sockunion_t));
	psu->sa.sa_family = AF_UNSPEC;

	error = FUNC3(str1, "0", &hints, &res);
	if (error) {
		FUNC7("getaddrinfo: %s", FUNC2(error));
		return (0);
	}
	FUNC0(res != NULL);
	af = res->ai_family;
	FUNC5(psu, res->ai_addr, res->ai_addrlen);
	FUNC1(res);

	/* sscanf() may pass the empty string. */
	if (psu2 != NULL && str3 != NULL && *str3 != '\0') {
		FUNC6(psu2, 0, sizeof(sockunion_t));
		psu2->sa.sa_family = AF_UNSPEC;

		/* look for following address family; str3 is *optional*. */
		hints.ai_family = af;
		error = FUNC3(str3, "0", &hints, &res);
		if (error) {
			FUNC7("getaddrinfo: %s", FUNC2(error));
			ifindex = 0;
		} else {
			if (af != res->ai_family) {
				errno = EINVAL; /* XXX */
				ifindex = 0;
			}
			FUNC5(psu2, res->ai_addr, res->ai_addrlen);
			FUNC1(res);
		}
	}

	return (ifindex);
}