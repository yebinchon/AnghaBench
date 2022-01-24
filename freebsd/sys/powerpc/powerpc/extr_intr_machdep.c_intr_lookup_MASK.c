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
typedef  scalar_t__ u_int ;
struct powerpc_intr {scalar_t__ irq; int vector; size_t cntindex; int /*<<< orphan*/ * cntp; int /*<<< orphan*/  pi_cpuset; scalar_t__ ipi; scalar_t__ fwcode; int /*<<< orphan*/ * pic; int /*<<< orphan*/  pol; int /*<<< orphan*/  trig; int /*<<< orphan*/ * priv; int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INTR_POLARITY_CONFORM ; 
 int /*<<< orphan*/  INTR_TRIGGER_CONFORM ; 
 int /*<<< orphan*/  M_INTR ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  all_cpus ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct powerpc_intr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr_table_lock ; 
 int /*<<< orphan*/ * intrcnt ; 
 int /*<<< orphan*/  intrcnt_index ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 struct powerpc_intr* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int num_io_irqs ; 
 int nvectors ; 
 struct powerpc_intr** powerpc_intrs ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

__attribute__((used)) static struct powerpc_intr *
FUNC8(u_int irq)
{
	char intrname[16];
	struct powerpc_intr *i, *iscan;
	int vector;

	FUNC5(&intr_table_lock);
	for (vector = 0; vector < nvectors; vector++) {
		i = powerpc_intrs[vector];
		if (i != NULL && i->irq == irq) {
			FUNC6(&intr_table_lock);
			return (i);
		}
	}

	i = FUNC4(sizeof(*i), M_INTR, M_NOWAIT);
	if (i == NULL) {
		FUNC6(&intr_table_lock);
		return (NULL);
	}

	i->event = NULL;
	i->cntp = NULL;
	i->priv = NULL;
	i->trig = INTR_TRIGGER_CONFORM;
	i->pol = INTR_POLARITY_CONFORM;
	i->irq = irq;
	i->pic = NULL;
	i->vector = -1;
	i->fwcode = 0;
	i->ipi = 0;

#ifdef SMP
	i->pi_cpuset = all_cpus;
#else
	FUNC0(0, &i->pi_cpuset);
#endif

	for (vector = 0; vector < num_io_irqs && vector <= nvectors;
	    vector++) {
		iscan = powerpc_intrs[vector];
		if (iscan != NULL && iscan->irq == irq)
			break;
		if (iscan == NULL && i->vector == -1)
			i->vector = vector;
		iscan = NULL;
	}

	if (iscan == NULL && i->vector != -1) {
		powerpc_intrs[i->vector] = i;
		i->cntindex = FUNC1(&intrcnt_index, 1);
		i->cntp = &intrcnt[i->cntindex];
		FUNC7(intrname, "irq%u:", i->irq);
		FUNC3(intrname, i->cntindex);
		nvectors++;
	}
	FUNC6(&intr_table_lock);

	if (iscan != NULL || i->vector == -1) {
		FUNC2(i, M_INTR);
		i = iscan;
	}

	return (i);
}