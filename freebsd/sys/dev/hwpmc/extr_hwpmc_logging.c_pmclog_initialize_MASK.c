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
struct pmclog_buffer {int dummy; } ;
struct TYPE_2__ {int pdbh_ncpus; struct pmclog_buffer* pdbh_plbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_PMC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct pmclog_buffer*,void*,int) ; 
 int PMC_LOG_BUFFER_SIZE ; 
 int PMC_NLOGBUFFERS_PCPU ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__** pmc_dom_hdrs ; 
 int /*<<< orphan*/  pmc_kthread_mtx ; 
 int pmc_nlogbuffers_pcpu ; 
 int /*<<< orphan*/  FUNC4 (struct pmclog_buffer*) ; 
 int pmclog_buffer_size ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int vm_ndomains ; 

void
FUNC6()
{
	struct pmclog_buffer *plb;
	int domain, ncpus, total;

	if (pmclog_buffer_size <= 0 || pmclog_buffer_size > 16*1024) {
		(void) FUNC5("hwpmc: tunable logbuffersize=%d must be "
					  "greater than zero and less than or equal to 16MB.\n",
					  pmclog_buffer_size);
		pmclog_buffer_size = PMC_LOG_BUFFER_SIZE;
	}

	if (pmc_nlogbuffers_pcpu <= 0) {
		(void) FUNC5("hwpmc: tunable nlogbuffers=%d must be greater "
					  "than zero.\n", pmc_nlogbuffers_pcpu);
		pmc_nlogbuffers_pcpu = PMC_NLOGBUFFERS_PCPU;
	}
	if (pmc_nlogbuffers_pcpu*pmclog_buffer_size > 32*1024) {
		(void) FUNC5("hwpmc: memory allocated pcpu must be less than 32MB (is %dK).\n",
					  pmc_nlogbuffers_pcpu*pmclog_buffer_size);
		pmc_nlogbuffers_pcpu = PMC_NLOGBUFFERS_PCPU;
		pmclog_buffer_size = PMC_LOG_BUFFER_SIZE;
	}
	for (domain = 0; domain < vm_ndomains; domain++) {
		ncpus = pmc_dom_hdrs[domain]->pdbh_ncpus;
		total = ncpus * pmc_nlogbuffers_pcpu;

		plb = FUNC2(sizeof(struct pmclog_buffer) * total,
		    M_PMC, FUNC0(domain), M_WAITOK | M_ZERO);
		pmc_dom_hdrs[domain]->pdbh_plbs = plb;
		for (; total > 0; total--, plb++) {
			void *buf;

			buf = FUNC2(1024 * pmclog_buffer_size, M_PMC,
			    FUNC0(domain), M_WAITOK | M_ZERO);
			FUNC1(plb, buf, domain);
			FUNC4(plb);
		}
	}
	FUNC3(&pmc_kthread_mtx, "pmc-kthread", "pmc-sleep", MTX_DEF);
}