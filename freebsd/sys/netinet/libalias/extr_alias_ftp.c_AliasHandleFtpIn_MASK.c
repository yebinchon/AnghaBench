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
struct tcphdr {int th_off; int /*<<< orphan*/  th_dport; } ;
struct libalias {scalar_t__ true_port; int /*<<< orphan*/  true_addr; } ;
struct ip {int ip_hl; int /*<<< orphan*/  ip_len; } ;
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FTP_CONTROL_PORT_NUMBER ; 
 int /*<<< orphan*/  GET_ALIAS_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_link*) ; 
 int FUNC3 (struct alias_link*) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int MAX_MESSAGE_SIZE ; 
 scalar_t__ FUNC4 (struct libalias*,char*,int) ; 
 scalar_t__ FUNC5 (struct libalias*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct alias_link*,int) ; 
 int WAIT_CRLF ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct ip*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct libalias *la,
    struct ip *pip,		/* IP packet to examine/patch */
    struct alias_link *lnk)	/* The link to go through (aliased port) */
{
	int hlen, tlen, dlen, pflags;
	char *sptr;
	struct tcphdr *tc;

	/* Calculate data length of TCP packet */
	tc = (struct tcphdr *)FUNC8(pip);
	hlen = (pip->ip_hl + tc->th_off) << 2;
	tlen = FUNC9(pip->ip_len);
	dlen = tlen - hlen;

	/* Place string pointer and beginning of data */
	sptr = (char *)pip;
	sptr += hlen;

	/*
	 * Check that data length is not too long and previous message was
	 * properly terminated with CRLF.
	 */
	pflags = FUNC3(lnk);
	if (dlen <= MAX_MESSAGE_SIZE && (pflags & WAIT_CRLF) == 0 &&
	    FUNC9(tc->th_dport) == FTP_CONTROL_PORT_NUMBER &&
	    (FUNC5(la, sptr, dlen) != 0 ||
	     FUNC4(la, sptr, dlen) != 0)) {
		/*
		 * Alias active mode client requesting data from server
		 * behind NAT.  We need to alias server->client connection
		 * to external address client is connecting to.
		 */
		FUNC0(la, FUNC2(lnk), la->true_addr,
		    FUNC1(lnk), FUNC7(FTP_CONTROL_PORT_NUMBER - 1),
		    FUNC7(la->true_port), GET_ALIAS_PORT, IPPROTO_TCP);
	}
	/* Track the msgs which are CRLF term'd for PORT/PASV FW breach */
	if (dlen) {
		sptr = (char *)pip;		/* start over at beginning */
		tlen = FUNC9(pip->ip_len);	/* recalc tlen, pkt may
						 * have grown.
						 */
		if (sptr[tlen - 2] == '\r' && sptr[tlen - 1] == '\n')
			pflags &= ~WAIT_CRLF;
		else
			pflags |= WAIT_CRLF;
		FUNC6(lnk, pflags);
       }
}