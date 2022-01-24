#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct powerpc_intr {int pi_domain; scalar_t__ trig; scalar_t__ pic; scalar_t__ pol; int /*<<< orphan*/  priv; int /*<<< orphan*/  vector; int /*<<< orphan*/  intline; int /*<<< orphan*/  pi_cpuset; int /*<<< orphan*/  fwcode; int /*<<< orphan*/  cntindex; TYPE_1__* event; } ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
struct TYPE_3__ {int /*<<< orphan*/  ie_fullname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 scalar_t__ INTR_POLARITY_CONFORM ; 
 scalar_t__ INTR_TRIGGER_CONFORM ; 
 scalar_t__ INTR_TRIGGER_INVALID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  cold ; 
 int /*<<< orphan*/ * cpuset_domain ; 
 int FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC7 (TYPE_1__**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct powerpc_intr* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  intr_table_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  powerpc_assign_intr_cpu ; 
 int /*<<< orphan*/  powerpc_intr_eoi ; 
 int /*<<< orphan*/  powerpc_intr_post_ithread ; 
 int /*<<< orphan*/  powerpc_intr_pre_ithread ; 
 int FUNC13 (struct powerpc_intr*) ; 
 scalar_t__ root_pic ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

int
FUNC15(const char *name, u_int irq, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags, void **cookiep,
    int domain)
{
	struct powerpc_intr *i;
	int error, enable = 0;

	i = FUNC8(irq);
	if (i == NULL)
		return (ENOMEM);

	if (i->event == NULL) {
		error = FUNC7(&i->event, (void *)i, 0, irq,
		    powerpc_intr_pre_ithread, powerpc_intr_post_ithread,
		    powerpc_intr_eoi, powerpc_assign_intr_cpu, "irq%u:", irq);
		if (error)
			return (error);

		enable = 1;
	}

	error = FUNC6(i->event, name, filter, handler, arg,
	    FUNC9(flags), flags, cookiep);
	if (error)
		return (error);
	i->pi_domain = domain;
	if (FUNC14(name, "IPI") != 0)  {
		FUNC1(&i->pi_cpuset);
		FUNC0(&cpuset_domain[domain], &i->pi_cpuset);
	}
	FUNC11(&intr_table_lock);
	FUNC10(i->event->ie_fullname, i->cntindex);
	FUNC12(&intr_table_lock);

	if (!cold) {
		error = FUNC13(i);

		if (!error) {
			if (i->trig == INTR_TRIGGER_INVALID)
				FUNC5(i->pic, i->intline,
				    i->fwcode, &i->trig, &i->pol);
	
			if (i->trig != INTR_TRIGGER_CONFORM ||
			    i->pol != INTR_POLARITY_CONFORM)
				FUNC3(i->pic, i->intline, i->trig, i->pol);

			if (i->pic == root_pic)
				FUNC2(i->pic, i->intline, i->pi_cpuset, &i->priv);

			if (enable)
				FUNC4(i->pic, i->intline, i->vector,
				    &i->priv);
		}
	}
	return (error);
}