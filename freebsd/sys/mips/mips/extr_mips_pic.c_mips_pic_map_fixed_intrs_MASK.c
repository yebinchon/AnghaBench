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
struct mips_pic_intr {scalar_t__ intr_irq; scalar_t__ mips_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  mips_pic_intrs ; 
 int FUNC0 (scalar_t__,struct mips_pic_intr**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 

int
FUNC3(void)
{
	int error;

	for (u_int i = 0; i < FUNC1(mips_pic_intrs); i++) {
		struct mips_pic_intr *intr;

		if ((error = FUNC0(i, &intr)))
			return (error);

		/* INTRNG IRQs 0-7 must be directly mapped to MIPS IRQs 0-7 */
		if (intr->intr_irq != intr->mips_irq) {
			FUNC2("invalid IRQ mapping: %u->%u", intr->intr_irq,
			    intr->mips_irq);
		}
	}

	return (0);
}