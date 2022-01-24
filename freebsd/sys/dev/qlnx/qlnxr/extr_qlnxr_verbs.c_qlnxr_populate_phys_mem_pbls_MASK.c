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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct regpair {void* hi; void* lo; } ;
struct qlnxr_pbl_info {int num_pbes; int pbl_size; scalar_t__ two_layered; } ;
struct qlnxr_pbl {scalar_t__ va; } ;
struct qlnxr_dev {int /*<<< orphan*/ * ha; } ;
struct ib_phys_buf {int size; int addr; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct qlnxr_dev *dev,
	struct ib_phys_buf *buf_list, int buf_cnt,
	struct qlnxr_pbl *pbl, struct qlnxr_pbl_info *pbl_info)
{
	struct regpair		*pbe;
	struct qlnxr_pbl	*pbl_tbl;
	int			pg_cnt, pages, pbe_cnt, total_num_pbes = 0;
	qlnx_host_t		*ha;
        int                     i;
	u64			pbe_addr;

	ha = dev->ha;

	FUNC1(ha, "enter\n");

	if (!pbl_info) {
		FUNC0(ha, "PBL_INFO not initialized\n");
		return;
	}

	if (!pbl_info->num_pbes) {
		FUNC0(ha, "pbl_info->num_pbes == 0\n");
		return;
	}

	/* If we have a two layered pbl, the first pbl points to the rest
	 * of the pbls and the first entry lays on the second pbl in the table
	 */
	if (pbl_info->two_layered)
		pbl_tbl = &pbl[1];
	else
		pbl_tbl = pbl;

	pbe = (struct regpair *)pbl_tbl->va;
	if (!pbe) {
		FUNC1(ha, "pbe is NULL\n");
		return;
	}

	pbe_cnt = 0;

	for (i = 0; i < buf_cnt; i++) {

		pages = buf_list->size >> PAGE_SHIFT;

		for (pg_cnt = 0; pg_cnt < pages; pg_cnt++) {
			/* store the page address in pbe */

			pbe_addr = buf_list->addr + (PAGE_SIZE * pg_cnt);

			pbe->lo = FUNC2((u32)pbe_addr);
			pbe->hi = FUNC2(((u32)(pbe_addr >> 32)));

			FUNC1(ha, "Populate pbl table:"
				" pbe->addr=0x%x:0x%x "
				" pbe_cnt = %d total_num_pbes=%d"
				" pbe=%p\n", pbe->lo, pbe->hi, pbe_cnt,
				total_num_pbes, pbe);

			pbe_cnt ++;
			total_num_pbes ++;
			pbe++;

			if (total_num_pbes == pbl_info->num_pbes)
				return;

			/* if the given pbl is full storing the pbes,
			 * move to next pbl.  */

			if (pbe_cnt == (pbl_info->pbl_size / sizeof(u64))) {
				pbl_tbl++;
				pbe = (struct regpair *)pbl_tbl->va;
				pbe_cnt = 0;
			}
		}
		buf_list++;
	}
	FUNC1(ha, "exit\n");
	return;
}