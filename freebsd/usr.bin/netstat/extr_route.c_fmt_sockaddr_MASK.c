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
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr_ng {int /*<<< orphan*/  sg_data; } ;
struct sockaddr_dl {char* sdl_data; int /*<<< orphan*/  sdl_nlen; } ;
struct sockaddr {int sa_family; int /*<<< orphan*/  sa_len; scalar_t__ sa_data; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
#define  AF_LINK 129 
#define  AF_NETGRAPH 128 
 int RTF_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct sockaddr*,struct sockaddr*) ; 
 int numeric_addr ; 
 char* FUNC2 (struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static const char *
FUNC7(struct sockaddr *sa, struct sockaddr *mask, int flags)
{
	static char buf[128];
	const char *cp;

	if (sa == NULL)
		return ("null");

	switch(sa->sa_family) {
#ifdef INET6
	case AF_INET6:
		/*
		 * The sa6->sin6_scope_id must be filled here because
		 * this sockaddr is extracted from kmem(4) directly
		 * and has KAME-specific embedded scope id in
		 * sa6->sin6_addr.s6_addr[2].
		 */
		in6_fillscopeid(satosin6(sa));
		/* FALLTHROUGH */
#endif /*INET6*/
	case AF_INET:
		if (flags & RTF_HOST)
			cp = FUNC2(sa, numeric_addr);
		else if (mask)
			cp = FUNC1(sa, mask);
		else
			cp = FUNC1(sa, NULL);
		break;
	case AF_NETGRAPH:
	    {
		FUNC5(buf, ((struct sockaddr_ng *)sa)->sg_data,
		    sizeof(buf));
		cp = buf;
		break;
	    }
	case AF_LINK:
	    {
#if 0
		struct sockaddr_dl *sdl = (struct sockaddr_dl *)sa;

		/* Interface route. */
		if (sdl->sdl_nlen)
			cp = sdl->sdl_data;
		else
#endif
			cp = FUNC2(sa, 1);
		break;
	    }
	default:
	    {
		u_char *s = (u_char *)sa->sa_data, *slim;
		char *cq, *cqlim;

		cq = buf;
		slim =  sa->sa_len + (u_char *) sa;
		cqlim = cq + sizeof(buf) - sizeof(" ffff");
		FUNC4(cq, sizeof(buf), "(%d)", sa->sa_family);
		cq += FUNC6(cq);
		while (s < slim && cq < cqlim) {
			FUNC4(cq, sizeof(" ff"), " %02x", *s++);
			cq += FUNC6(cq);
			if (s < slim) {
			    FUNC4(cq, sizeof("ff"), "%02x", *s++);
			    cq += FUNC6(cq);
			}
		}
		cp = buf;
	    }
	}

	return (cp);
}