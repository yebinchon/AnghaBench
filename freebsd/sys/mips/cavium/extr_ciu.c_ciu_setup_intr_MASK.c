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
struct resource {int dummy; } ;
struct intr_event {int /*<<< orphan*/  ie_fullname; } ;
typedef  int /*<<< orphan*/  mips_intrcnt_t ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CIU_IRQ_EN0_BEGIN ; 
 int CIU_IRQ_EN0_END ; 
 int CIU_IRQ_EN1_BEGIN ; 
 int FUNC0 (void*,int) ; 
 struct intr_event** ciu_en0_intr_events ; 
 void FUNC1 (void*) ; 
 void FUNC2 (void*) ; 
 int /*<<< orphan*/ * ciu_en0_intrcnt ; 
 int FUNC3 (void*,int) ; 
 struct intr_event** ciu_en1_intr_events ; 
 void FUNC4 (void*) ; 
 void FUNC5 (void*) ; 
 int /*<<< orphan*/ * ciu_en1_intrcnt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intr_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC8 (struct intr_event**,void*,int /*<<< orphan*/ ,int,void (*) (void*),void (*) (void*),int /*<<< orphan*/ *,int (*) (void*,int),char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct resource*) ; 

__attribute__((used)) static int
FUNC12(device_t bus, device_t child, struct resource *res, int flags,
	       driver_filter_t *filter, driver_intr_t *intr, void *arg,
	       void **cookiep)
{
	struct intr_event *event, **eventp;
	void (*mask_func)(void *);
	void (*unmask_func)(void *);
	int (*bind_func)(void *, int);
	mips_intrcnt_t intrcnt;
	int error;
	int irq;

	irq = FUNC11(res);
	if (irq <= CIU_IRQ_EN0_END) {
		eventp = &ciu_en0_intr_events[irq - CIU_IRQ_EN0_BEGIN];
		intrcnt = ciu_en0_intrcnt[irq - CIU_IRQ_EN0_BEGIN];
		mask_func = ciu_en0_intr_mask;
		unmask_func = ciu_en0_intr_unmask;
#ifdef SMP
		bind_func = ciu_en0_intr_bind;
#endif
	} else {
		eventp = &ciu_en1_intr_events[irq - CIU_IRQ_EN1_BEGIN];
		intrcnt = ciu_en1_intrcnt[irq - CIU_IRQ_EN1_BEGIN];
		mask_func = ciu_en1_intr_mask;
		unmask_func = ciu_en1_intr_unmask;
#ifdef SMP
		bind_func = ciu_en1_intr_bind;
#endif
	}
#if !defined(SMP)
	bind_func = NULL;
#endif

	if ((event = *eventp) == NULL) {
		error = FUNC8(eventp, (void *)(uintptr_t)irq, 0,
		    irq, mask_func, unmask_func, NULL, bind_func, "int%d", irq);
		if (error != 0)
			return (error);

		event = *eventp;

		unmask_func((void *)(uintptr_t)irq);
	}

	FUNC7(event, FUNC6(child),
	    filter, intr, arg, FUNC9(flags), flags, cookiep);

	FUNC10(intrcnt, event->ie_fullname);

	return (0);
}