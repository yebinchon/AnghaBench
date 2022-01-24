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
struct tcphdr {int dummy; } ;
struct mbufq {int dummy; } ;
struct mbuf {int dummy; } ;
struct ip {int dummy; } ;
struct dyn_ipv4_state {int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; TYPE_1__* data; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_2__ {int state; scalar_t__ ack_fwd; scalar_t__ ack_rev; int /*<<< orphan*/  fibnum; } ;

/* Variables and functions */
 int ACK_FWD ; 
 int ACK_REV ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (struct mbufq*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC5(struct mbufq *q, const struct dyn_ipv4_state *s)
{
	struct mbuf *m;

	if ((s->data->state & ACK_FWD) == 0 && s->data->ack_fwd > 0) {
		m = FUNC1(sizeof(struct ip) + sizeof(struct tcphdr),
		    s->data->fibnum);
		if (m != NULL) {
			FUNC0(m, s->dst, s->src,
			    s->data->ack_fwd - 1, s->data->ack_rev,
			    s->dport, s->sport);
			if (FUNC4(q, m)) {
				FUNC3(m);
				FUNC2(LOG_DEBUG, "ipfw: limit for IPv4 "
				    "keepalive queue is reached.\n");
				return;
			}
		}
	}

	if ((s->data->state & ACK_REV) == 0 && s->data->ack_rev > 0) {
		m = FUNC1(sizeof(struct ip) + sizeof(struct tcphdr),
		    s->data->fibnum);
		if (m != NULL) {
			FUNC0(m, s->src, s->dst,
			    s->data->ack_rev - 1, s->data->ack_fwd,
			    s->sport, s->dport);
			if (FUNC4(q, m)) {
				FUNC3(m);
				FUNC2(LOG_DEBUG, "ipfw: limit for IPv4 "
				    "keepalive queue is reached.\n");
				return;
			}
		}
	}
}