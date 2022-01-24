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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_short ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int IPPROTO_TCP ; 
 int IPPROTO_UDP ; 
 int /*<<< orphan*/  M_HASHTYPE_RSS_IPV4 ; 
 int /*<<< orphan*/  M_HASHTYPE_RSS_TCP_IPV4 ; 
 int /*<<< orphan*/  M_HASHTYPE_RSS_UDP_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RSS_HASHTYPE_RSS_IPV4 ; 
 int RSS_HASHTYPE_RSS_TCP_IPV4 ; 
 int RSS_HASHTYPE_RSS_UDP_IPV4 ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct in_addr,struct in_addr) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ) ; 

int
FUNC4(struct in_addr s, struct in_addr d,
    u_short sp, u_short dp, int proto,
    uint32_t *hashval, uint32_t *hashtype)
{
	uint32_t hash;

	/*
	 * Next, choose the hash type depending upon the protocol
	 * identifier.
	 */
	if ((proto == IPPROTO_TCP) &&
	    (FUNC1() & RSS_HASHTYPE_RSS_TCP_IPV4)) {
		hash = FUNC3(s, sp, d, dp);
		*hashval = hash;
		*hashtype = M_HASHTYPE_RSS_TCP_IPV4;
		return (0);
	} else if ((proto == IPPROTO_UDP) &&
	    (FUNC1() & RSS_HASHTYPE_RSS_UDP_IPV4)) {
		hash = FUNC3(s, sp, d, dp);
		*hashval = hash;
		*hashtype = M_HASHTYPE_RSS_UDP_IPV4;
		return (0);
	} else if (FUNC1() & RSS_HASHTYPE_RSS_IPV4) {
		/* RSS doesn't hash on other protocols like SCTP; so 2-tuple */
		hash = FUNC2(s, d);
		*hashval = hash;
		*hashtype = M_HASHTYPE_RSS_IPV4;
		return (0);
	}

	/* No configured available hashtypes! */
	FUNC0("no available hashtypes!\n");
	return (-1);
}