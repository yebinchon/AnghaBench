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
typedef  int u_short ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_src; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_dst; } ;
struct icmp {int icmp_id; int /*<<< orphan*/  icmp_cksum; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in_addr*,struct in_addr*,int) ; 
 struct alias_link* FUNC2 (struct libalias*,struct in_addr,int /*<<< orphan*/ ,int,int) ; 
 struct in_addr FUNC3 (struct alias_link*) ; 
 int FUNC4 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*) ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 scalar_t__ FUNC6 (struct ip*) ; 

__attribute__((used)) static int
FUNC7(struct libalias *la, struct ip *pip, int create)
{
/*
    Alias outgoing echo and timestamp requests.
    De-alias outgoing echo and timestamp replies.
*/
	struct alias_link *lnk;
	struct icmp *ic;

	FUNC5(la);
	ic = (struct icmp *)FUNC6(pip);

/* Save overwritten data for when echo packet returns */
	lnk = FUNC2(la, pip->ip_src, pip->ip_dst, ic->icmp_id, create);
	if (lnk != NULL) {
		u_short alias_id;
		int accumulate;

		alias_id = FUNC4(lnk);

/* Since data field is being modified, adjust ICMP checksum */
		accumulate = ic->icmp_id;
		accumulate -= alias_id;
		FUNC0(accumulate, ic->icmp_cksum);

/* Alias sequence number */
		ic->icmp_id = alias_id;

/* Change source address */
		{
			struct in_addr alias_address;

			alias_address = FUNC3(lnk);
			FUNC1(&pip->ip_sum,
			    &alias_address, &pip->ip_src, 2);
			pip->ip_src = alias_address;
		}

		return (PKT_ALIAS_OK);
	}
	return (PKT_ALIAS_IGNORED);
}