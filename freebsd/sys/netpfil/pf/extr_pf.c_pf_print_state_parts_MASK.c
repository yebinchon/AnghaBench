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
typedef  int u_int8_t ;
struct pf_state_key {int proto; int /*<<< orphan*/  af; int /*<<< orphan*/ * port; int /*<<< orphan*/ * addr; } ;
struct TYPE_4__ {int wscale; int seqlo; int seqhi; int max_win; int seqdiff; int state; } ;
struct TYPE_3__ {int seqlo; int seqhi; int max_win; int seqdiff; int wscale; int state; } ;
struct pf_state {int direction; TYPE_2__ dst; TYPE_1__ src; struct pf_state_key** key; } ;

/* Variables and functions */
#define  IPPROTO_ICMP 135 
#define  IPPROTO_ICMPV6 134 
#define  IPPROTO_IPV4 133 
#define  IPPROTO_IPV6 132 
#define  IPPROTO_TCP 131 
#define  IPPROTO_UDP 130 
#define  PF_IN 129 
#define  PF_OUT 128 
 size_t PF_SK_STACK ; 
 size_t PF_SK_WIRE ; 
 int PF_WSCALE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(struct pf_state *s,
    struct pf_state_key *skwp, struct pf_state_key *sksp)
{
	struct pf_state_key *skw, *sks;
	u_int8_t proto, dir;

	/* Do our best to fill these, but they're skipped if NULL */
	skw = skwp ? skwp : (s ? s->key[PF_SK_WIRE] : NULL);
	sks = sksp ? sksp : (s ? s->key[PF_SK_STACK] : NULL);
	proto = skw ? skw->proto : (sks ? sks->proto : 0);
	dir = s ? s->direction : 0;

	switch (proto) {
	case IPPROTO_IPV4:
		FUNC1("IPv4");
		break;
	case IPPROTO_IPV6:
		FUNC1("IPv6");
		break;
	case IPPROTO_TCP:
		FUNC1("TCP");
		break;
	case IPPROTO_UDP:
		FUNC1("UDP");
		break;
	case IPPROTO_ICMP:
		FUNC1("ICMP");
		break;
	case IPPROTO_ICMPV6:
		FUNC1("ICMPv6");
		break;
	default:
		FUNC1("%u", proto);
		break;
	}
	switch (dir) {
	case PF_IN:
		FUNC1(" in");
		break;
	case PF_OUT:
		FUNC1(" out");
		break;
	}
	if (skw) {
		FUNC1(" wire: ");
		FUNC0(&skw->addr[0], skw->port[0], skw->af);
		FUNC1(" ");
		FUNC0(&skw->addr[1], skw->port[1], skw->af);
	}
	if (sks) {
		FUNC1(" stack: ");
		if (sks != skw) {
			FUNC0(&sks->addr[0], sks->port[0], sks->af);
			FUNC1(" ");
			FUNC0(&sks->addr[1], sks->port[1], sks->af);
		} else
			FUNC1("-");
	}
	if (s) {
		if (proto == IPPROTO_TCP) {
			FUNC1(" [lo=%u high=%u win=%u modulator=%u",
			    s->src.seqlo, s->src.seqhi,
			    s->src.max_win, s->src.seqdiff);
			if (s->src.wscale && s->dst.wscale)
				FUNC1(" wscale=%u",
				    s->src.wscale & PF_WSCALE_MASK);
			FUNC1("]");
			FUNC1(" [lo=%u high=%u win=%u modulator=%u",
			    s->dst.seqlo, s->dst.seqhi,
			    s->dst.max_win, s->dst.seqdiff);
			if (s->src.wscale && s->dst.wscale)
				FUNC1(" wscale=%u",
				s->dst.wscale & PF_WSCALE_MASK);
			FUNC1("]");
		}
		FUNC1(" %u:%u", s->src.state, s->dst.state);
	}
}