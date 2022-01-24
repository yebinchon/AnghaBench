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
struct ip {struct in_addr ip_dst; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_src; } ;
struct icmp {int icmp_id; int /*<<< orphan*/  icmp_cksum; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in_addr*,struct in_addr*,int) ; 
 struct alias_link* FUNC2 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,int,int) ; 
 struct in_addr FUNC3 (struct alias_link*) ; 
 int FUNC4 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*) ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 scalar_t__ FUNC6 (struct ip*) ; 

__attribute__((used)) static int
FUNC7(struct libalias *la, struct ip *pip)
{

	FUNC5(la);
/*
    De-alias incoming echo and timestamp replies.
    Alias incoming echo and timestamp requests.
*/
	struct alias_link *lnk;
	struct icmp *ic;

	ic = (struct icmp *)FUNC6(pip);

/* Get source address from ICMP data field and restore original data */
	lnk = FUNC2(la, pip->ip_src, pip->ip_dst, ic->icmp_id, 1);
	if (lnk != NULL) {
		u_short original_id;
		int accumulate;

		original_id = FUNC4(lnk);

/* Adjust ICMP checksum */
		accumulate = ic->icmp_id;
		accumulate -= original_id;
		FUNC0(accumulate, ic->icmp_cksum);

/* Put original sequence number back in */
		ic->icmp_id = original_id;

/* Put original address back into IP header */
		{
			struct in_addr original_address;

			original_address = FUNC3(lnk);
			FUNC1(&pip->ip_sum,
			    &original_address, &pip->ip_dst, 2);
			pip->ip_dst = original_address;
		}

		return (PKT_ALIAS_OK);
	}
	return (PKT_ALIAS_IGNORED);
}