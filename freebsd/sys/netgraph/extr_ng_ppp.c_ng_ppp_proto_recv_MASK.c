#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct mbuf {int dummy; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/ * hook_p ;
struct TYPE_4__ {int /*<<< orphan*/  enableIPX; int /*<<< orphan*/  enableAtalk; int /*<<< orphan*/  enableIPv6; int /*<<< orphan*/  enableIP; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** hooks; TYPE_1__ conf; } ;
typedef  struct mbuf* NGI_M ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOBUFS ; 
 size_t HOOK_INDEX_ATALK ; 
 size_t HOOK_INDEX_INET ; 
 size_t HOOK_INDEX_IPV6 ; 
 size_t HOOK_INDEX_IPX ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct mbuf*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
#define  PROT_ATALK 131 
#define  PROT_IP 130 
#define  PROT_IPV6 129 
#define  PROT_IPX 128 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uint32_t ; 

__attribute__((used)) static int
FUNC9(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
	const priv_p priv = FUNC4(node);
	hook_p outHook = NULL;
	int error;
#ifdef ALIGNED_POINTER
	struct mbuf *m, *n;

	NGI_GET_M(item, m);
	if (!ALIGNED_POINTER(mtod(m, caddr_t), uint32_t)) {
		n = m_defrag(m, M_NOWAIT);
		if (n == NULL) {
			m_freem(m);
			NG_FREE_ITEM(item);
			return (ENOBUFS);
		}
		m = n;
	}
	NGI_M(item) = m;
#endif /* ALIGNED_POINTER */
	switch (proto) {
	    case PROT_IP:
		if (priv->conf.enableIP)
		    outHook = priv->hooks[HOOK_INDEX_INET];
		break;
	    case PROT_IPV6:
		if (priv->conf.enableIPv6)
		    outHook = priv->hooks[HOOK_INDEX_IPV6];
		break;
	    case PROT_ATALK:
		if (priv->conf.enableAtalk)
		    outHook = priv->hooks[HOOK_INDEX_ATALK];
		break;
	    case PROT_IPX:
		if (priv->conf.enableIPX)
		    outHook = priv->hooks[HOOK_INDEX_IPX];
		break;
	}

	if (outHook == NULL)
		return (FUNC8(node, item, proto, linkNum));

	/* Send packet out hook. */
	FUNC3(error, item, outHook);
	return (error);
}