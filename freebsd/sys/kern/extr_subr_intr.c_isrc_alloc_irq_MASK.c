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
typedef  size_t u_int ;
struct intr_irqsrc {size_t isrc_irq; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 size_t irq_next_free ; 
 struct intr_irqsrc** irq_sources ; 
 int /*<<< orphan*/  isrc_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct intr_irqsrc**) ; 

__attribute__((used)) static inline int
FUNC2(struct intr_irqsrc *isrc)
{
	u_int maxirqs, irq;

	FUNC0(&isrc_table_lock, MA_OWNED);

	maxirqs = FUNC1(irq_sources);
	if (irq_next_free >= maxirqs)
		return (ENOSPC);

	for (irq = irq_next_free; irq < maxirqs; irq++) {
		if (irq_sources[irq] == NULL)
			goto found;
	}
	for (irq = 0; irq < irq_next_free; irq++) {
		if (irq_sources[irq] == NULL)
			goto found;
	}

	irq_next_free = maxirqs;
	return (ENOSPC);

found:
	isrc->isrc_irq = irq;
	irq_sources[irq] = isrc;

	irq_next_free = irq + 1;
	if (irq_next_free >= maxirqs)
		irq_next_free = 0;
	return (0);
}