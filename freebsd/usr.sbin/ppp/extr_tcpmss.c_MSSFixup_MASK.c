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
typedef  int u_int16_t ;
typedef  scalar_t__ u_char ;
struct tcphdr {int th_off; int th_flags; int /*<<< orphan*/  th_sum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 size_t TCPOLEN_MAXSEG ; 
 scalar_t__ TCPOPT_EOL ; 
 scalar_t__ TCPOPT_MAXSEG ; 
 scalar_t__ TCPOPT_NOP ; 
 int TH_SYN ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct tcphdr *tc, size_t pktlen, u_int16_t maxmss)
{
  size_t hlen, olen, optlen;
  u_char *opt;
  u_int16_t *mss;
  int accumulate;

  hlen = tc->th_off << 2;

  /* Invalid header length or header without options. */
  if (hlen <= sizeof(struct tcphdr) || hlen > pktlen)
    return;

  /* MSS option only allowed within SYN packets. */
  if (!(tc->th_flags & TH_SYN))
    return;

  for (olen = hlen - sizeof(struct tcphdr), opt = (u_char *)(tc + 1);
       olen > 0; olen -= optlen, opt += optlen) {
    if (*opt == TCPOPT_EOL)
      break;
    else if (*opt == TCPOPT_NOP)
      optlen = 1;
    else {
      optlen = *(opt + 1);
      if (optlen <= 0 || optlen > olen)
        break;
      if (*opt == TCPOPT_MAXSEG) {
        if (optlen != TCPOLEN_MAXSEG)
          continue;
        mss = (u_int16_t *)(opt + 2);
        if (FUNC3(*mss) > maxmss) {
          FUNC2(LogDEBUG, "MSS: %u -> %u\n",
               FUNC3(*mss), maxmss);
          accumulate = *mss;
          *mss = FUNC1(maxmss);
          accumulate -= *mss;
          FUNC0(accumulate, tc->th_sum);
        }
      }
    }
  }
}