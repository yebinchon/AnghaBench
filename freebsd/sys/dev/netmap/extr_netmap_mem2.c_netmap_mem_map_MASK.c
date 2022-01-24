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
struct netmap_obj_pool {int objtotal; int _clustentries; scalar_t__ _objsize; int /*<<< orphan*/  name; int /*<<< orphan*/  _clustsize; TYPE_1__* lut; } ;
struct netmap_lut {TYPE_2__* plut; } ;
struct netmap_adapter {int /*<<< orphan*/ * pdev; int /*<<< orphan*/  name; struct netmap_lut na_lut; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;
struct TYPE_4__ {scalar_t__ paddr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * vaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct netmap_adapter*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_obj_pool*,struct netmap_adapter*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int
FUNC5(struct netmap_obj_pool *p, struct netmap_adapter *na)
{
	int error = 0;
	int i, lim = p->objtotal;
	struct netmap_lut *lut = &na->na_lut;

	if (na->pdev == NULL)
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

	if (lut->plut != NULL) {
		FUNC3("plut already allocated for %s", na->name);
		return 0;
	}

	FUNC3("allocating physical lut for %s", na->name);
	lut->plut = FUNC2(lim);
	if (lut->plut == NULL) {
		FUNC4("Failed to allocate physical lut for %s", na->name);
		return ENOMEM;
	}

	for (i = 0; i < lim; i += p->_clustentries) {
		lut->plut[i].paddr = 0;
	}

	for (i = 0; i < lim; i += p->_clustentries) {
		int j;

		if (p->lut[i].vaddr == NULL)
			continue;

		error = FUNC0(na, (bus_dma_tag_t) na->pdev, &lut->plut[i].paddr,
				p->lut[i].vaddr, p->_clustsize);
		if (error) {
			FUNC4("Failed to map cluster #%d from the %s pool", i, p->name);
			break;
		}

		for (j = 1; j < p->_clustentries; j++) {
			lut->plut[i + j].paddr = lut->plut[i + j - 1].paddr + p->_objsize;
		}
	}

	if (error)
		FUNC1(p, na);

#endif /* linux */

	return error;
}