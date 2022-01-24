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
struct mbuf {int m_len; } ;
struct m_tag {int dummy; } ;
struct ipfw_rule_ref {int /*<<< orphan*/  info; } ;
struct ip_fw_args {int flags; struct ipfw_rule_ref rule; } ;
struct ip {int dummy; } ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int IPFW_ARGS_IN ; 
 int /*<<< orphan*/  IPFW_INFO_IN ; 
 int /*<<< orphan*/  IPFW_INFO_OUT ; 
 int /*<<< orphan*/  IPFW_ONEPASS ; 
 int /*<<< orphan*/  MTAG_IPFW_RULE ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/ * fw_node ; 
 struct mbuf* FUNC1 (struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (struct mbuf*,int) ; 
 struct m_tag* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,struct m_tag*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct mbuf **m0, struct ip_fw_args *fwa, bool tee)
{
	struct mbuf *m;
	hook_p	hook;
	int error = 0;

	/*
	 * Node must be loaded and corresponding hook must be present.
	 */
	if (fw_node == NULL || 
	   (hook = FUNC6(fw_node, fwa->rule.info)) == NULL)
		return (ESRCH);		/* no hook associated with this rule */

	/*
	 * We have two modes: in normal mode we add a tag to packet, which is
	 * important to return packet back to IP stack. In tee mode we make
	 * a copy of a packet and forward it into netgraph without a tag.
	 */
	if (tee == false) {
		struct m_tag *tag;
		struct ipfw_rule_ref *r;
		m = *m0;
		*m0 = NULL;	/* it belongs now to netgraph */

		tag = FUNC4(MTAG_IPFW_RULE, 0, sizeof(*r),
			M_NOWAIT|M_ZERO);
		if (tag == NULL) {
			FUNC2(m);
			return (ENOMEM);
		}
		r = (struct ipfw_rule_ref *)(tag + 1);
		*r = fwa->rule;
		r->info &= IPFW_ONEPASS;  /* keep this info */
		r->info |= (fwa->flags & IPFW_ARGS_IN) ?
		    IPFW_INFO_IN : IPFW_INFO_OUT;
		FUNC5(m, tag);

	} else
		if ((m = FUNC1(*m0, M_NOWAIT)) == NULL)
			return (ENOMEM);	/* which is ignored */

	if (m->m_len < sizeof(struct ip) &&
	    (m = FUNC3(m, sizeof(struct ip))) == NULL)
		return (EINVAL);

	FUNC0(error, hook, m);

	return (error);
}