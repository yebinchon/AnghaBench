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
typedef  scalar_t__ vm_paddr_t ;
typedef  int uintmax_t ;
struct pcpu {int dummy; } ;
struct msgbuf {int dummy; } ;

/* Variables and functions */
 int KSTACK_PAGES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ Maxmem ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMNUM_PIDS ; 
 int /*<<< orphan*/  VM_MAX_KERNEL_ADDRESS ; 
 scalar_t__ VM_MIN_KERNEL_ADDRESS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ kstack0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msgbuf*,int) ; 
 struct msgbuf* msgbufp ; 
 int msgbufsize ; 
 int need_local_mappings ; 
 struct pcpu* pcpup ; 
 scalar_t__* phys_avail ; 
 scalar_t__* physmem_desc ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  pmap_max_asid ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 struct pcpu* FUNC11 (int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ virtual_avail ; 
 int /*<<< orphan*/  virtual_end ; 

void
FUNC16(void)
{
	int i;

	/* Sort. */
again:
	for (i = 0; phys_avail[i + 1] != 0; i += 2) {
		/*
		 * Keep the memory aligned on page boundary.
		 */
		phys_avail[i] = FUNC12(phys_avail[i]);
		phys_avail[i + 1] = FUNC15(phys_avail[i + 1]);

		if (i < 2)
			continue;
		if (phys_avail[i - 2] > phys_avail[i]) {
			vm_paddr_t ptemp[2];

			ptemp[0] = phys_avail[i + 0];
			ptemp[1] = phys_avail[i + 1];

			phys_avail[i + 0] = phys_avail[i - 2];
			phys_avail[i + 1] = phys_avail[i - 1];

			phys_avail[i - 2] = ptemp[0];
			phys_avail[i - 1] = ptemp[1];
			goto again;
		}
	}

       	/*
	 * In 32 bit, we may have memory which cannot be mapped directly.
	 * This memory will need temporary mapping before it can be
	 * accessed.
	 */
	if (!FUNC0(phys_avail[i - 1] - 1))
		need_local_mappings = 1;

	/*
	 * Copy the phys_avail[] array before we start stealing memory from it.
	 */
	for (i = 0; phys_avail[i + 1] != 0; i += 2) {
		physmem_desc[i] = phys_avail[i];
		physmem_desc[i + 1] = phys_avail[i + 1];
	}

	Maxmem = FUNC2(phys_avail[i - 1]);

	if (bootverbose) {
		FUNC10("Physical memory chunk(s):\n");
		for (i = 0; phys_avail[i + 1] != 0; i += 2) {
			vm_paddr_t size;

			size = phys_avail[i + 1] - phys_avail[i];
			FUNC10("%#08jx - %#08jx, %ju bytes (%ju pages)\n",
			    (uintmax_t) phys_avail[i],
			    (uintmax_t) phys_avail[i + 1] - 1,
			    (uintmax_t) size, (uintmax_t) size / PAGE_SIZE);
		}
		FUNC10("Maxmem is 0x%0jx\n", FUNC11((uintmax_t)Maxmem));
	}
	/*
	 * Steal the message buffer from the beginning of memory.
	 */
	msgbufp = (struct msgbuf *)FUNC9(msgbufsize);
	FUNC6(msgbufp, msgbufsize);

	/*
	 * Steal thread0 kstack.
	 */
	kstack0 = FUNC9(KSTACK_PAGES << PAGE_SHIFT);

	virtual_avail = VM_MIN_KERNEL_ADDRESS;
	virtual_end = VM_MAX_KERNEL_ADDRESS;

#ifdef SMP
	/*
	 * Steal some virtual address space to map the pcpu area.
	 */
	virtual_avail = roundup2(virtual_avail, PAGE_SIZE * 2);
	pcpup = (struct pcpu *)virtual_avail;
	virtual_avail += PAGE_SIZE * 2;

	/*
	 * Initialize the wired TLB entry mapping the pcpu region for
	 * the BSP at 'pcpup'. Up until this point we were operating
	 * with the 'pcpup' for the BSP pointing to a virtual address
	 * in KSEG0 so there was no need for a TLB mapping.
	 */
	mips_pcpu_tlb_init(PCPU_ADDR(0));

	if (bootverbose)
		printf("pcpu is available at virtual address %p.\n", pcpup);
#endif

	FUNC8();
	if (need_local_mappings)
		FUNC7();
	pmap_max_asid = VMNUM_PIDS;
	FUNC4(0);
	FUNC5(0);

 	/*
	 * Initialize the global pv list lock.
	 */
	FUNC14(&pvh_global_lock, "pmap pv global");
}