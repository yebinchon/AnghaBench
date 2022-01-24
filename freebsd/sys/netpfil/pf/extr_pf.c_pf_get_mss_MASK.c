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
typedef  int u_int8_t ;
typedef  int u_int16_t ;
struct tcphdr {int dummy; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TCPOLEN_MAXSEG ; 
#define  TCPOPT_EOL 130 
#define  TCPOPT_MAXSEG 129 
#define  TCPOPT_NOP 128 
 int V_tcp_mssdflt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int16_t
FUNC3(struct mbuf *m, int off, u_int16_t th_off, sa_family_t af)
{
	int		 hlen;
	u_int8_t	 hdr[60];
	u_int8_t	*opt, optlen;
	u_int16_t	 mss = V_tcp_mssdflt;

	hlen = th_off << 2;	/* hlen <= sizeof(hdr) */
	if (hlen <= sizeof(struct tcphdr))
		return (0);
	if (!FUNC2(m, off, hdr, hlen, NULL, NULL, af))
		return (0);
	opt = hdr + sizeof(struct tcphdr);
	hlen -= sizeof(struct tcphdr);
	while (hlen >= TCPOLEN_MAXSEG) {
		switch (*opt) {
		case TCPOPT_EOL:
		case TCPOPT_NOP:
			++opt;
			--hlen;
			break;
		case TCPOPT_MAXSEG:
			FUNC1((caddr_t)(opt + 2), (caddr_t)&mss, 2);
			FUNC0(mss);
			/* FALLTHROUGH */
		default:
			optlen = opt[1];
			if (optlen < 2)
				optlen = 2;
			hlen -= optlen;
			opt += optlen;
			break;
		}
	}
	return (mss);
}