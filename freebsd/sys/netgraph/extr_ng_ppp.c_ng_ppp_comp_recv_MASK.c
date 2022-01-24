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
typedef  int uint16_t ;
struct mbuf {int dummy; } ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  item_p ;
struct TYPE_4__ {scalar_t__ enableDecompression; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** hooks; TYPE_1__ conf; } ;
typedef  struct mbuf* NGI_M ;

/* Variables and functions */
 int EIO ; 
 size_t HOOK_INDEX_DECOMPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ NG_PPP_DECOMPRESS_FULL ; 
 int PROT_COMPD ; 
 struct mbuf* FUNC4 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(node_p node, item_p item, uint16_t proto, uint16_t linkNum)
{
	const priv_p priv = FUNC3(node);

	if (proto < 0x4000 &&
	    ((proto == PROT_COMPD && priv->conf.enableDecompression) ||
	    priv->conf.enableDecompression == NG_PPP_DECOMPRESS_FULL) &&
	    priv->hooks[HOOK_INDEX_DECOMPRESS] != NULL) {
		int error;

		if (priv->conf.enableDecompression == NG_PPP_DECOMPRESS_FULL) {
			struct mbuf *m;
			FUNC0(item, m);
			if ((m = FUNC4(m, proto, 0)) == NULL) {
				FUNC1(item);
				return (EIO);
			}
			NGI_M(item) = m;
		}

		/* Send packet out hook. */
		FUNC2(error, item,
		    priv->hooks[HOOK_INDEX_DECOMPRESS]);
		return (error);
	} else if (proto == PROT_COMPD) {
		/* Disabled protos MUST be silently discarded, but
		 * unsupported MUST not. Let user-level decide this. */
		return (FUNC5(node, item, proto, linkNum));
	}

	return (FUNC6(node, item, proto, linkNum));
}