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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  subtype ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct lagg_port {int dummy; } ;
struct lacp_port {int dummy; } ;
struct ether_header {int dummy; } ;

/* Variables and functions */
 struct lacp_port* FUNC0 (struct lagg_port*) ; 
#define  SLOWPROTOCOLS_SUBTYPE_LACP 129 
#define  SLOWPROTOCOLS_SUBTYPE_MARKER 128 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lacp_port*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

struct mbuf *
FUNC5(struct lagg_port *lgp, struct mbuf *m)
{
	struct lacp_port *lp = FUNC0(lgp);
	uint8_t subtype;

	if (m->m_pkthdr.len < sizeof(struct ether_header) + sizeof(subtype)) {
		FUNC4(m);
		return (NULL);
	}

	FUNC3(m, sizeof(struct ether_header), sizeof(subtype), &subtype);
	switch (subtype) {
		case SLOWPROTOCOLS_SUBTYPE_LACP:
			FUNC2(lp, m);
			return (NULL);

		case SLOWPROTOCOLS_SUBTYPE_MARKER:
			FUNC1(lp, m);
			return (NULL);
	}

	/* Not a subtype we are interested in */
	return (m);
}