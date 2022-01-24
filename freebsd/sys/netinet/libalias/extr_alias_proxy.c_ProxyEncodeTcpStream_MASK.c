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
typedef  int u_int ;
struct tcphdr {int th_off; int th_x2; scalar_t__ th_sum; int /*<<< orphan*/  th_seq; } ;
struct ip {int ip_len; int ip_hl; int /*<<< orphan*/  ip_sum; } ;
struct alias_link {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct alias_link*,int,int,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct alias_link*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct alias_link*) ; 
 int /*<<< orphan*/  FUNC4 (struct alias_link*) ; 
 int FUNC5 (struct alias_link*) ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct alias_link*) ; 
 scalar_t__ FUNC8 (struct ip*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (int) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct ip*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(struct alias_link *lnk,
    struct ip *pip,
    int maxpacketsize)
{
	int slen;
	char buffer[40];
	struct tcphdr *tc;
	char addrbuf[INET_ADDRSTRLEN];

/* Compute pointer to tcp header */
	tc = (struct tcphdr *)FUNC12(pip);

/* Don't modify if once already modified */

	if (FUNC2(lnk))
		return;

/* Translate destination address and port to string form */
	FUNC15(buffer, sizeof(buffer) - 2, "[DEST %s %d]",
	    FUNC11(FUNC4(lnk), FUNC6(addrbuf)),
	    (u_int) FUNC14(FUNC5(lnk)));

/* Pad string out to a multiple of two in length */
	slen = FUNC17(buffer);
	switch (slen % 2) {
	case 0:
		FUNC16(buffer, " \n");
		slen += 2;
		break;
	case 1:
		FUNC16(buffer, "\n");
		slen += 1;
	}

/* Check for packet overflow */
	if ((int)(FUNC14(pip->ip_len) + FUNC17(buffer)) > maxpacketsize)
		return;

/* Shift existing TCP data and insert destination string */
	{
		int dlen;
		int hlen;
		char *p;

		hlen = (pip->ip_hl + tc->th_off) << 2;
		dlen = FUNC14(pip->ip_len) - hlen;

/* Modify first packet that has data in it */

		if (dlen == 0)
			return;

		p = (char *)pip;
		p += hlen;

		FUNC9(p, p + slen, dlen);
		FUNC13(p, buffer, slen);
	}

/* Save information about modfied sequence number */
	{
		int delta;

		FUNC7(lnk);
		tc = (struct tcphdr *)FUNC12(pip);			
		delta = FUNC3(tc->th_seq, lnk);
		FUNC1(lnk, delta + slen, pip->ip_hl, pip->ip_len, tc->th_seq,
		    tc->th_off);
	}

/* Update IP header packet length and checksum */
	{
		int accumulate;

		accumulate = pip->ip_len;
		pip->ip_len = FUNC10(FUNC14(pip->ip_len) + slen);
		accumulate -= pip->ip_len;

		FUNC0(accumulate, pip->ip_sum);
	}

/* Update TCP checksum, Use TcpChecksum since so many things have
   already changed. */

	tc->th_sum = 0;
#ifdef _KERNEL
	tc->th_x2 = 1;
#else
	tc->th_sum = FUNC8(pip);
#endif
}