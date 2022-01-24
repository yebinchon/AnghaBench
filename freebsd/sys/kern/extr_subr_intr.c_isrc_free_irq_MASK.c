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
struct intr_irqsrc {size_t isrc_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t INTR_IRQ_INVALID ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct intr_irqsrc** irq_sources ; 
 int /*<<< orphan*/  isrc_table_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct intr_irqsrc**) ; 

__attribute__((used)) static inline int
FUNC2(struct intr_irqsrc *isrc)
{

	FUNC0(&isrc_table_lock, MA_OWNED);

	if (isrc->isrc_irq >= FUNC1(irq_sources))
		return (EINVAL);
	if (irq_sources[isrc->isrc_irq] != isrc)
		return (EINVAL);

	irq_sources[isrc->isrc_irq] = NULL;
	isrc->isrc_irq = INTR_IRQ_INVALID;	/* just to be safe */
	return (0);
}