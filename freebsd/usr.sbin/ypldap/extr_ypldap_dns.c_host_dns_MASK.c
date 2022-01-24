#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ypldap_addr_list {int dummy; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;
struct ypldap_addr {TYPE_2__ ss; } ;
struct sockaddr_in6 {int sin6_len; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; } ;
struct in6_addr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_socktype; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EAI_AGAIN ; 
 int EAI_NONAME ; 
 int MAX_SERVERS_DNS ; 
 scalar_t__ PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct ypldap_addr_list*,struct ypldap_addr*,int /*<<< orphan*/ ) ; 
 struct ypldap_addr* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 

int
FUNC9(const char *s, struct ypldap_addr_list *hn)
{
	struct addrinfo		 hints, *res0, *res;
	int			 error, cnt = 0;
	struct sockaddr_in	*sa_in;
	struct sockaddr_in6	*sa_in6;
	struct ypldap_addr	*h;

	FUNC8(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_DGRAM; /* DUMMY */
	error = FUNC5(s, NULL, &hints, &res0);
	if (error == EAI_AGAIN || error == EAI_NONAME)
			return (0);
	if (error) {
		FUNC6("could not parse \"%s\": %s", s,
		    FUNC4(error));
		return (-1);
	}

	for (res = res0; res && cnt < MAX_SERVERS_DNS; res = res->ai_next) {
		if (res->ai_family != AF_INET &&
		    res->ai_family != AF_INET6)
			continue;
		if ((h = FUNC1(1, sizeof(struct ypldap_addr))) == NULL)
			FUNC2(NULL);
		h->ss.ss_family = res->ai_family;
		if (res->ai_family == AF_INET) {
			sa_in = (struct sockaddr_in *)&h->ss;
			sa_in->sin_len = sizeof(struct sockaddr_in);
			sa_in->sin_addr.s_addr = ((struct sockaddr_in *)
			    res->ai_addr)->sin_addr.s_addr;
		} else {
			sa_in6 = (struct sockaddr_in6 *)&h->ss;
			sa_in6->sin6_len = sizeof(struct sockaddr_in6);
			FUNC7(&sa_in6->sin6_addr, &((struct sockaddr_in6 *)
			    res->ai_addr)->sin6_addr, sizeof(struct in6_addr));
		}

		FUNC0(hn, h, next);
		cnt++;
	}
	FUNC3(res0);
	return (cnt);
}