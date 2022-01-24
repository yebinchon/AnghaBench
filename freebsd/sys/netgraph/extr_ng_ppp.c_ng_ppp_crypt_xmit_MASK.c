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
struct TYPE_4__ {scalar_t__ enableEncryption; } ;
struct TYPE_5__ {int /*<<< orphan*/ ** hooks; TYPE_1__ conf; } ;
typedef  struct mbuf* NGI_M ;

/* Variables and functions */
 int ENOBUFS ; 
 size_t HOOK_INDEX_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct mbuf*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int PROT_CRYPTD ; 
 struct mbuf* FUNC4 (struct mbuf*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(node_p node, item_p item, uint16_t proto)
{
	const priv_p priv = FUNC3(node);

	if (priv->conf.enableEncryption &&
	    proto < 0x4000 &&
	    proto != PROT_CRYPTD &&
	    priv->hooks[HOOK_INDEX_ENCRYPT] != NULL) {
		struct mbuf *m;
		int error;

		FUNC0(item, m);
		if ((m = FUNC4(m, proto, 0)) == NULL) {
			FUNC1(item);
			return (ENOBUFS);
		}
		NGI_M(item) = m;

		/* Send packet out hook. */
		FUNC2(error, item, priv->hooks[HOOK_INDEX_ENCRYPT]);
		return (error);
	}

	return (FUNC5(node, item, proto));
}