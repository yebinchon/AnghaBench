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
typedef  struct mbuf* item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_4__ {int enableCompression; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;
typedef  struct mbuf* NGI_M ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const) ; 
#define  NG_PPP_COMPRESS_FULL 129 
#define  NG_PPP_COMPRESS_NONE 128 
 int /*<<< orphan*/  PROT_COMPD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (struct mbuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(hook_p hook, item_p item)
{
	const node_p node = FUNC2(hook);
	const priv_p priv = FUNC3(node);
	uint16_t proto;

	switch (priv->conf.enableCompression) {
	    case NG_PPP_COMPRESS_NONE:
		FUNC1(item);
		return (ENXIO);
	    case NG_PPP_COMPRESS_FULL:
		{
			struct mbuf *m;

			FUNC0(item, m);
			if ((m = FUNC6(m, &proto)) == NULL) {
				FUNC1(item);
				return (EIO);
			}
			NGI_M(item) = m;
			if (!FUNC4(proto)) {
				FUNC1(item);
				return (EIO);
			}
		}
		break;
	    default:
		proto = PROT_COMPD;
		break;
	}
	return (FUNC5(node, item, proto));
}