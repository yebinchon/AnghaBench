#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct kcov_info {scalar_t__ kvaddr; scalar_t__ state; size_t bufsize; size_t entries; int /*<<< orphan*/  bufobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_5__ {int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t KCOV_ELEMENT_SIZE ; 
 scalar_t__ KCOV_STATE_OPEN ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 size_t PAGE_SIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 TYPE_4__* curthread ; 
 size_t kcov_max_entries ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__**,int) ; 
 size_t FUNC5 (size_t,size_t) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct kcov_info *info, size_t entries)
{
	size_t n, pages;
	vm_page_t m;

	FUNC0(info->kvaddr == 0, ("kcov_alloc: Already have a buffer"));
	FUNC0(info->state == KCOV_STATE_OPEN,
	    ("kcov_alloc: Not in open state (%x)", info->state));

	if (entries < 2 || entries > kcov_max_entries)
		return (EINVAL);

	/* Align to page size so mmap can't access other kernel memory */
	info->bufsize = FUNC5(entries * KCOV_ELEMENT_SIZE, PAGE_SIZE);
	pages = info->bufsize / PAGE_SIZE;

	if ((info->kvaddr = FUNC3(info->bufsize)) == 0)
		return (ENOMEM);

	info->bufobj = FUNC7(OBJT_PHYS, 0, info->bufsize,
	    PROT_READ | PROT_WRITE, 0, curthread->td_ucred);

	FUNC1(info->bufobj);
	for (n = 0; n < pages; n++) {
		m = FUNC6(info->bufobj, n,
		    VM_ALLOC_NOBUSY | VM_ALLOC_ZERO | VM_ALLOC_WIRED);
		m->valid = VM_PAGE_BITS_ALL;
		FUNC4(info->kvaddr + n * PAGE_SIZE, &m, 1);
	}
	FUNC2(info->bufobj);

	info->entries = entries;

	return (0);
}