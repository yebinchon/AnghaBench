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
struct netmap_obj_pool {int objtotal; int /*<<< orphan*/  _clustsize; scalar_t__ _clustentries; } ;
struct netmap_lut {TYPE_1__* plut; } ;
struct netmap_adapter {int /*<<< orphan*/ * pdev; int /*<<< orphan*/  name; struct netmap_lut na_lut; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
struct TYPE_2__ {scalar_t__ paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_adapter*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct netmap_obj_pool *p, struct netmap_adapter *na)
{
	int i, lim = p->objtotal;
	struct netmap_lut *lut = &na->na_lut;

	if (na == NULL || na->pdev == NULL)
		return 0;

#if defined(__FreeBSD__)
	/* On FreeBSD mapping and unmapping is performed by the txsync
	 * and rxsync routine, packet by packet. */
	(void)i;
	(void)lim;
	(void)lut;
#elif defined(_WIN32)
	(void)i;
	(void)lim;
	(void)lut;
	nm_prerr("unsupported on Windows");
#else /* linux */
	FUNC2("unmapping and freeing plut for %s", na->name);
	if (lut->plut == NULL)
		return 0;
	for (i = 0; i < lim; i += p->_clustentries) {
		if (lut->plut[i].paddr)
			FUNC0(na, (bus_dma_tag_t) na->pdev, &lut->plut[i].paddr, p->_clustsize);
	}
	FUNC1(lut->plut);
	lut->plut = NULL;
#endif /* linux */

	return 0;
}