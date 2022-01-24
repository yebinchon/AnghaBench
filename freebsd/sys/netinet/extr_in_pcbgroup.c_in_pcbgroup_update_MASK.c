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
struct inpcbinfo {int dummy; } ;
struct inpcbgroup {int dummy; } ;
struct inpcb {int inp_flags2; int inp_flags; int inp_vflag; struct inpcbinfo* inp_pcbinfo; } ;

/* Variables and functions */
 int INP_DROPPED ; 
 int INP_IPV6 ; 
 int INP_PCBGROUPWILD ; 
 int /*<<< orphan*/  FUNC0 (struct inpcb*) ; 
 struct inpcbgroup* FUNC1 (struct inpcb*) ; 
 struct inpcbgroup* FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcbinfo*,struct inpcbgroup*,struct inpcb*) ; 
 int /*<<< orphan*/  FUNC5 (struct inpcb*) ; 

void
FUNC6(struct inpcb *inp)
{
	struct inpcbinfo *pcbinfo;
	struct inpcbgroup *newpcbgroup;

	FUNC0(inp);

	pcbinfo = inp->inp_pcbinfo;
	if (!FUNC3(pcbinfo))
		return;

	FUNC5(inp);
	if (!(inp->inp_flags2 & INP_PCBGROUPWILD) &&
	    !(inp->inp_flags & INP_DROPPED)) {
#ifdef INET6
		if (inp->inp_vflag & INP_IPV6)
			newpcbgroup = in6_pcbgroup_byinpcb(inp);
		else
#endif
			newpcbgroup = FUNC2(inp);
	} else
		newpcbgroup = NULL;
	FUNC4(pcbinfo, newpcbgroup, inp);
}