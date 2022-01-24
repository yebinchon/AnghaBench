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
typedef  void* uint32_t ;
struct in_addr {void* s_addr; } ;
struct TYPE_4__ {int sgroup; int egroup; struct in_addr end; struct in_addr start; } ;
struct TYPE_3__ {void* end; void* start; } ;
struct ip_range {TYPE_2__ ipv6; TYPE_1__ ipv4; void* port1; void* port0; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  start ;
typedef  int /*<<< orphan*/  end ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct in_addr*,struct in_addr*) ; 
 int INET6_ADDRSTRLEN ; 
 int OPT_COPY ; 
 int /*<<< orphan*/  FUNC2 (char*,void**,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct in_addr*,void**,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct in_addr*,char*,int) ; 
 char* FUNC7 (char*,char) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int
FUNC10(struct ip_range *r, int af)
{
	char *name, *ap, start[INET6_ADDRSTRLEN];
	char end[INET6_ADDRSTRLEN];
	struct in_addr a;
	uint32_t tmp;

	if (verbose)
		FUNC0("extract IP range from %s", r->name);

	name = FUNC8(r->name);
	if (name == NULL) {
		FUNC0("strdup failed");
		FUNC9(-1);
	}
	/* the first - splits start/end of range */
	ap = FUNC7(name, '-');
	if (ap != NULL)
		*ap++ = '\0';
	r->port0 = 1234;	/* default port */
	if (af == AF_INET6) {
		r->ipv6.sgroup = 7; /* default group */
		FUNC3(name, &r->ipv6.start, &r->port0,
		    &r->ipv6.sgroup);
	} else
		FUNC2(name, &r->ipv4.start, &r->port0);

	r->port1 = r->port0;
	if (af == AF_INET6) {
		if (ap != NULL) {
			r->ipv6.egroup = r->ipv6.sgroup;
			FUNC3(ap, &r->ipv6.end, &r->port1,
			    &r->ipv6.egroup);
		} else {
			r->ipv6.end = r->ipv6.start;
			r->ipv6.egroup = r->ipv6.sgroup;
		}
	} else {
		if (ap != NULL) {
			FUNC2(ap, &r->ipv4.end, &r->port1);
			if (r->ipv4.start > r->ipv4.end) {
				tmp = r->ipv4.end;
				r->ipv4.end = r->ipv4.start;
				r->ipv4.start = tmp;
			}
		} else
			r->ipv4.end = r->ipv4.start;
	}

	if (r->port0 > r->port1) {
		tmp = r->port0;
		r->port0 = r->port1;
		r->port1 = tmp;
	}
	if (af == AF_INET) {
		a.s_addr = FUNC5(r->ipv4.start);
		FUNC6(af, &a, start, sizeof(start));
		a.s_addr = FUNC5(r->ipv4.end);
		FUNC6(af, &a, end, sizeof(end));
	} else {
		FUNC6(af, &r->ipv6.start, start, sizeof(start));
		FUNC6(af, &r->ipv6.end, end, sizeof(end));
	}
	if (af == AF_INET)
		FUNC0("range is %s:%d to %s:%d", start, r->port0, end, r->port1);
	else
		FUNC0("range is %d@[%s]:%d to %d@[%s]:%d", r->ipv6.sgroup,
		    start, r->port0, r->ipv6.egroup, end, r->port1);

	FUNC4(name);
	if (r->port0 != r->port1 ||
	    (af == AF_INET && r->ipv4.start != r->ipv4.end) ||
	    (af == AF_INET6 &&
		!FUNC1(&r->ipv6.start, &r->ipv6.end)))
		return (OPT_COPY);
	return (0);
}