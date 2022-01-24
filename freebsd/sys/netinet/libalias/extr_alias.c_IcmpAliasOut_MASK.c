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
struct libalias {int packetAliasMode; } ;
struct ip {int dummy; } ;
struct icmp {int icmp_type; int /*<<< orphan*/  icmp_code; } ;

/* Variables and functions */
#define  ICMP_ECHO 135 
#define  ICMP_ECHOREPLY 134 
#define  ICMP_PARAMPROB 133 
#define  ICMP_SOURCEQUENCH 132 
#define  ICMP_TIMXCEED 131 
#define  ICMP_TSTAMP 130 
#define  ICMP_TSTAMPREPLY 129 
#define  ICMP_UNREACH 128 
 int FUNC0 (struct libalias*,struct ip*,int) ; 
 int FUNC1 (struct libalias*,struct ip*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*) ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 int PKT_ALIAS_PROXY_ONLY ; 
 scalar_t__ FUNC3 (struct ip*) ; 

__attribute__((used)) static int
FUNC4(struct libalias *la, struct ip *pip, int create)
{
	int iresult;
	struct icmp *ic;

	FUNC2(la);
	(void)create;

/* Return if proxy-only mode is enabled */
	if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY)
		return (PKT_ALIAS_OK);

	ic = (struct icmp *)FUNC3(pip);

	iresult = PKT_ALIAS_IGNORED;
	switch (ic->icmp_type) {
	case ICMP_ECHO:
	case ICMP_TSTAMP:
		if (ic->icmp_code == 0) {
			iresult = FUNC0(la, pip, create);
		}
		break;
	case ICMP_UNREACH:
	case ICMP_SOURCEQUENCH:
	case ICMP_TIMXCEED:
	case ICMP_PARAMPROB:
		iresult = FUNC1(la, pip);
		break;
	case ICMP_ECHOREPLY:
	case ICMP_TSTAMPREPLY:
		iresult = FUNC0(la, pip, create);
	}
	return (iresult);
}