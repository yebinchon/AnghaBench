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
typedef  int uint8_t ;
typedef  int u_int ;
struct patch {int dummy; } ;
struct cs {int end; int begin; } ;
struct ahc_softc {int pci_cachesize; int instruction_ram_size; int num_critical_sections; int features; int bugs; int flags; int /*<<< orphan*/ * critical_sections; int /*<<< orphan*/ * targetcmds; } ;
struct ahc_dma_seg {int dummy; } ;
typedef  int /*<<< orphan*/  seqprog ;
typedef  int /*<<< orphan*/  end_set ;
typedef  int /*<<< orphan*/  begin_set ;
struct TYPE_2__ {int end; int begin; } ;

/* Variables and functions */
 size_t CACHESIZE_MASK ; 
 int ENOMEM ; 
 int FAILDIS ; 
 int FALSE ; 
 int FASTMODE ; 
 size_t INVERTED_CACHESIZE_MASK ; 
 int LOADRAM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PERRORDIS ; 
 size_t QINFIFO_OFFSET ; 
 size_t QOUTFIFO_OFFSET ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQCTL ; 
 size_t SG_PREFETCH_ADDR_MASK ; 
 size_t SG_PREFETCH_ALIGN_MASK ; 
 size_t SG_PREFETCH_CNT ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct ahc_softc*,struct patch**,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int,int*) ; 
 char* FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 TYPE_1__* critical_sections ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct cs*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int num_critical_sections ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct patch* patches ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(struct ahc_softc *ahc)
{
	struct	cs cs_table[num_critical_sections];
	u_int	begin_set[num_critical_sections];
	u_int	end_set[num_critical_sections];
	struct	patch *cur_patch;
	u_int	cs_count;
	u_int	cur_cs;
	u_int	i;
	u_int	skip_addr;
	u_int	sg_prefetch_cnt;
	int	downloaded;
	uint8_t	download_consts[7];

	/*
	 * Start out with 0 critical sections
	 * that apply to this firmware load.
	 */
	cs_count = 0;
	cur_cs = 0;
	FUNC6(begin_set, 0, sizeof(begin_set));
	FUNC6(end_set, 0, sizeof(end_set));

	/* Setup downloadable constant table */
	download_consts[QOUTFIFO_OFFSET] = 0;
	if (ahc->targetcmds != NULL)
		download_consts[QOUTFIFO_OFFSET] += 32;
	download_consts[QINFIFO_OFFSET] = download_consts[QOUTFIFO_OFFSET] + 1;
	download_consts[CACHESIZE_MASK] = ahc->pci_cachesize - 1;
	download_consts[INVERTED_CACHESIZE_MASK] = ~(ahc->pci_cachesize - 1);
	sg_prefetch_cnt = ahc->pci_cachesize;
	if (sg_prefetch_cnt < (2 * sizeof(struct ahc_dma_seg)))
		sg_prefetch_cnt = 2 * sizeof(struct ahc_dma_seg);
	download_consts[SG_PREFETCH_CNT] = sg_prefetch_cnt;
	download_consts[SG_PREFETCH_ALIGN_MASK] = ~(sg_prefetch_cnt - 1);
	download_consts[SG_PREFETCH_ADDR_MASK] = (sg_prefetch_cnt - 1);

	cur_patch = patches;
	downloaded = 0;
	skip_addr = 0;
	FUNC3(ahc, SEQCTL, PERRORDIS|FAILDIS|FASTMODE|LOADRAM);
	FUNC3(ahc, SEQADDR0, 0);
	FUNC3(ahc, SEQADDR1, 0);

	for (i = 0; i < sizeof(seqprog)/4; i++) {
		if (FUNC0(ahc, &cur_patch, i, &skip_addr) == 0) {
			/*
			 * Don't download this instruction as it
			 * is in a patch that was removed.
			 */
			continue;
		}

		if (downloaded == ahc->instruction_ram_size) {
			/*
			 * We're about to exceed the instruction
			 * storage capacity for this chip.  Fail
			 * the load.
			 */
			FUNC8("\n%s: Program too large for instruction memory "
			       "size of %d!\n", FUNC2(ahc),
			       ahc->instruction_ram_size);
			return (ENOMEM);
		}

		/*
		 * Move through the CS table until we find a CS
		 * that might apply to this instruction.
		 */
		for (; cur_cs < num_critical_sections; cur_cs++) {
			if (critical_sections[cur_cs].end <= i) {
				if (begin_set[cs_count] == TRUE
				 && end_set[cs_count] == FALSE) {
					cs_table[cs_count].end = downloaded;
				 	end_set[cs_count] = TRUE;
					cs_count++;
				}
				continue;
			}
			if (critical_sections[cur_cs].begin <= i
			 && begin_set[cs_count] == FALSE) {
				cs_table[cs_count].begin = downloaded;
				begin_set[cs_count] = TRUE;
			}
			break;
		}
		FUNC1(ahc, i, download_consts);
		downloaded++;
	}

	ahc->num_critical_sections = cs_count;
	if (cs_count != 0) {

		cs_count *= sizeof(struct cs);
		ahc->critical_sections = FUNC4(cs_count, M_DEVBUF, M_NOWAIT);
		if (ahc->critical_sections == NULL)
			FUNC7("ahc_loadseq: Could not malloc");
		FUNC5(ahc->critical_sections, cs_table, cs_count);
	}
	FUNC3(ahc, SEQCTL, PERRORDIS|FAILDIS|FASTMODE);

	if (bootverbose) {
		FUNC8(" %d instructions downloaded\n", downloaded);
		FUNC8("%s: Features 0x%x, Bugs 0x%x, Flags 0x%x\n",
		       FUNC2(ahc), ahc->features, ahc->bugs, ahc->flags);
	}
	return (0);
}