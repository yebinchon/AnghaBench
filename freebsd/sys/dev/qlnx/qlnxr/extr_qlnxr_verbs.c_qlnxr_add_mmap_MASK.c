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
typedef  scalar_t__ u64 ;
struct qlnxr_ucontext {int /*<<< orphan*/  mm_list_lock; int /*<<< orphan*/  mm_head; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ phy_addr; } ;
struct qlnxr_mm {TYPE_2__ key; int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  qlnx_host_t ;
struct TYPE_3__ {int /*<<< orphan*/ * ha; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct qlnxr_mm* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct qlnxr_ucontext *uctx, u64 phy_addr, unsigned long len)
{
	struct qlnxr_mm	*mm;
	qlnx_host_t	*ha;

	ha = uctx->dev->ha;

	FUNC2(ha, "enter\n");

	mm = FUNC3(sizeof(*mm), GFP_KERNEL);
	if (mm == NULL) {
		FUNC1(ha, "mm = NULL\n");
		return -ENOMEM;
	}

	mm->key.phy_addr = phy_addr;

	/* This function might be called with a length which is not a multiple
	 * of PAGE_SIZE, while the mapping is PAGE_SIZE grained and the kernel
	 * forces this granularity by increasing the requested size if needed.
	 * When qedr_mmap is called, it will search the list with the updated
	 * length as a key. To prevent search failures, the length is rounded up
	 * in advance to PAGE_SIZE.
	 */
	mm->key.len = FUNC7(len, PAGE_SIZE);
	FUNC0(&mm->entry);

	FUNC5(&uctx->mm_list_lock);
	FUNC4(&mm->entry, &uctx->mm_head);
	FUNC6(&uctx->mm_list_lock);

	FUNC2(ha, "added (addr=0x%llx,len=0x%lx) for ctx=%p\n",
		(unsigned long long)mm->key.phy_addr,
		(unsigned long)mm->key.len, uctx);

	return 0;
}