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
typedef  unsigned int u_char ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr dst; int /*<<< orphan*/  srcopt; } ;
struct ipopt_tag {unsigned int ip_nhops; TYPE_1__ ip_srcrt; } ;
typedef  int /*<<< orphan*/  dst ;

/* Variables and functions */
 unsigned int IPOPT_OFFSET ; 
 size_t IPOPT_OLEN ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PACKET_TAG_IPOPTIONS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct m_tag*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static void
FUNC4(struct mbuf *m, u_char *option, struct in_addr dst)
{
	unsigned olen;
	struct ipopt_tag *opts;

	opts = (struct ipopt_tag *)FUNC2(PACKET_TAG_IPOPTIONS,
	    sizeof(struct ipopt_tag), M_NOWAIT);
	if (opts == NULL)
		return;

	olen = option[IPOPT_OLEN];
	if (olen > sizeof(opts->ip_srcrt) - (1 + sizeof(dst))) {
		FUNC1((struct m_tag *)opts);
		return;
	}
	FUNC0(option, opts->ip_srcrt.srcopt, olen);
	opts->ip_nhops = (olen - IPOPT_OFFSET - 1) / sizeof(struct in_addr);
	opts->ip_srcrt.dst = dst;
	FUNC3(m, (struct m_tag *)opts);
}