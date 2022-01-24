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
struct inpcb {int /*<<< orphan*/  inp_flow; scalar_t__ inp_fport; int /*<<< orphan*/  in6p_faddr; int /*<<< orphan*/  inp_pcbinfo; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcb*) ; 
 int /*<<< orphan*/  IPV6_FLOWLABEL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 

void
FUNC4(struct inpcb *inp)
{

	FUNC1(inp);
	FUNC0(inp->inp_pcbinfo);

	FUNC2((caddr_t)&inp->in6p_faddr, sizeof(inp->in6p_faddr));
	inp->inp_fport = 0;
	/* clear flowinfo - draft-itojun-ipv6-flowlabel-api-00 */
	inp->inp_flow &= ~IPV6_FLOWLABEL_MASK;
	FUNC3(inp);
}