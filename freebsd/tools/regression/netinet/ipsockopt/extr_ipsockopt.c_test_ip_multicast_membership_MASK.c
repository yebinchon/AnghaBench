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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_multiaddr; TYPE_1__ imr_interface; } ;
typedef  int /*<<< orphan*/  sotype ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  mreq ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 void* INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_ADD_MEMBERSHIP ; 
 int /*<<< orphan*/  IP_DROP_MEMBERSHIP ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_TYPE ; 
 scalar_t__ dorandom ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,char*,int) ; 
 int nmcastgroups ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_mreq*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC8(int sock, const char *socktypename)
{
    char addrbuf[16];
    struct ip_mreq mreq;
    uint32_t basegroup;
    uint16_t i;
    int sotype;
    socklen_t sotypelen;

    sotypelen = sizeof(sotype);
    if (FUNC2(sock, SOL_SOCKET, SO_TYPE, &sotype, &sotypelen) < 0)
	FUNC0(-1, "test_ip_multicast_membership(%s): so_type getsockopt()",
	    socktypename);
    /*
     * Do not perform the test for SOCK_STREAM sockets, as this makes
     * no sense.
     */
    if (sotype == SOCK_STREAM)
	return;
    /*
     * The 224/8 range is administratively scoped and has special meaning,
     * therefore it is not used for this test.
     * If we were not told to be non-deterministic:
     * Join multicast groups from 238.1.1.0 up to nmcastgroups.
     * Otherwise, pick a multicast group ID in subnet 238/5 with 11 random
     * bits in the middle, and join groups in linear order up to nmcastgroups.
     */
    if (dorandom) {
	/* be non-deterministic (for interactive operation; a fuller test) */
	FUNC7();
	basegroup = 0xEE000000;	/* 238.0.0.0 */
	basegroup |= ((FUNC5() % ((1 << 11) - 1)) << 16);	/* 11 bits */
    } else {
	/* be deterministic (for automated operation) */
	basegroup = 0xEE010100;	/* 238.1.1.0 */
    }
    /*
     * Join the multicast group(s) on the default multicast interface;
     * this usually maps to the interface to which the default
     * route is pointing.
     */
    for (i = 1; i < nmcastgroups+1; i++) {
	mreq.imr_multiaddr.s_addr = FUNC3((basegroup + i));
	mreq.imr_interface.s_addr = INADDR_ANY;
	FUNC4(AF_INET, &mreq.imr_multiaddr, addrbuf, sizeof(addrbuf));
	if (verbose)
		FUNC1(stderr, "IP_ADD_MEMBERSHIP %s INADDR_ANY\n", addrbuf);
	if (FUNC6(sock, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq,
		       sizeof(mreq)) < 0) {
		FUNC0(-1,
"test_ip_multicast_membership(%d, %s): failed IP_ADD_MEMBERSHIP (%s, %s)",
		    sock, socktypename, addrbuf, "INADDR_ANY");
	}
    }
    for (i = 1; i < nmcastgroups+1; i++) {
	mreq.imr_multiaddr.s_addr = FUNC3((basegroup + i));
	mreq.imr_interface.s_addr = INADDR_ANY;
	FUNC4(AF_INET, &mreq.imr_multiaddr, addrbuf, sizeof(addrbuf));
	if (verbose)
		FUNC1(stderr, "IP_DROP_MEMBERSHIP %s INADDR_ANY\n", addrbuf);
	if (FUNC6(sock, IPPROTO_IP, IP_DROP_MEMBERSHIP, &mreq,
		       sizeof(mreq)) < 0) {
		FUNC0(-1,
"test_ip_multicast_membership(%d, %s): failed IP_DROP_MEMBERSHIP (%s, %s)",
		    sock, socktypename, addrbuf, "INADDR_ANY");
	}
    }
}