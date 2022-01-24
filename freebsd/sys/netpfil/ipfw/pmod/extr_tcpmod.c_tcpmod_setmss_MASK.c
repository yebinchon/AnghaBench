#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int u_char ;
struct tcphdr {int th_sum; } ;
struct TYPE_2__ {scalar_t__ len; int csum_flags; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
typedef  int /*<<< orphan*/  oldmss ;
typedef  int /*<<< orphan*/  mss ;
typedef  int /*<<< orphan*/  csum ;

/* Variables and functions */
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int IP_FW_DENY ; 
 int TCPOLEN_MAXSEG ; 
 int TCPOPT_EOL ; 
 int TCPOPT_MAXSEG ; 
 int TCPOPT_NOP ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (int,int,int) ; 
 struct mbuf* FUNC2 (struct mbuf*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct mbuf **mp, struct tcphdr *tcp, int tlen, uint16_t mss)
{
	struct mbuf *m;
	u_char *cp;
	int optlen, ret;
	uint16_t oldmss, csum;

	m = *mp;
	ret = IP_FW_DENY;
	if (m->m_len < m->m_pkthdr.len) {
		/*
		 * We shouldn't have any data, IP packet contains only
		 * TCP header with options.
		 */
		*mp = m = FUNC2(m, m->m_pkthdr.len);
		if (m == NULL)
			return (ret);
	}
	/* Parse TCP options. */
	for (tlen -= sizeof(struct tcphdr), cp = (u_char *)(tcp + 1);
	    tlen > 0; tlen -= optlen, cp += optlen) {
		if (cp[0] == TCPOPT_EOL)
			break;
		if (cp[0] == TCPOPT_NOP) {
			optlen = 1;
			continue;
		}
		if (tlen < 2)
			break;
		optlen = cp[1];
		if (optlen < 2 || optlen > tlen)
			break;
		if (cp[0] == TCPOPT_MAXSEG) {
			if (optlen != TCPOLEN_MAXSEG)
				break;
			ret = 0; /* report success */
			FUNC0(cp + 2, &oldmss, sizeof(oldmss));
			/* Do not update lower MSS value */
			if (FUNC3(oldmss) <= FUNC3(mss))
				break;
			FUNC0(&mss, cp + 2, sizeof(mss));
			/* Update checksum if it is not delayed. */
			if ((m->m_pkthdr.csum_flags &
			    (CSUM_TCP | CSUM_TCP_IPV6)) == 0) {
				FUNC0(&tcp->th_sum, &csum, sizeof(csum));
				csum = FUNC1(csum, oldmss, mss);
				FUNC0(&csum, &tcp->th_sum, sizeof(csum));
			}
			break;
		}
	}

	return (ret);
}