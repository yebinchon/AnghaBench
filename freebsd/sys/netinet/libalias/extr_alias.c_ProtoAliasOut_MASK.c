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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in_addr*,struct in_addr*,int) ; 
 struct alias_link* FUNC1 (struct libalias*,struct in_addr,struct in_addr,int /*<<< orphan*/ ) ; 
 struct in_addr FUNC2 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 int PKT_ALIAS_PROXY_ONLY ; 

__attribute__((used)) static int
FUNC4(struct libalias *la, struct in_addr *ip_src, 
    struct in_addr ip_dst, u_char ip_p, u_short *ip_sum, int create)
{
/*
  Handle outgoing IP packets. The
  only thing which is done in this case is to alias
  the source IP address of the packet.
*/
	struct alias_link *lnk;

	FUNC3(la);

/* Return if proxy-only mode is enabled */
	if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY)
		return (PKT_ALIAS_OK);

	if (!create)
		return (PKT_ALIAS_IGNORED);

	lnk = FUNC1(la, *ip_src, ip_dst, ip_p);
	if (lnk != NULL) {
		struct in_addr alias_address;

		alias_address = FUNC2(lnk);

/* Change source address */
		FUNC0(ip_sum,
		    &alias_address, ip_src, 2);
		*ip_src = alias_address;

		return (PKT_ALIAS_OK);
	}
	return (PKT_ALIAS_IGNORED);
}