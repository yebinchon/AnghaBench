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
struct mips_pic_intr {scalar_t__ intr_irq; } ;
typedef  scalar_t__ rman_res_t ;

/* Variables and functions */
 struct mips_pic_intr* mips_pic_intrs ; 
 int /*<<< orphan*/  mips_pic_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (struct mips_pic_intr*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 

__attribute__((used)) static struct mips_pic_intr *
FUNC6(struct resource *r)
{
	struct mips_pic_intr	*intr;
	rman_res_t		 irq;

	irq = FUNC5(r);
	if (irq != FUNC3(r) || FUNC4(r) != 1)
		return (NULL);

	FUNC0(&mips_pic_mtx);
	for (size_t i = 0; i < FUNC2(mips_pic_intrs); i++) {
		intr = &mips_pic_intrs[i];

		if (intr->intr_irq != irq)
			continue;

		FUNC1(&mips_pic_mtx);
		return (intr);
	}
	FUNC1(&mips_pic_mtx);

	/* Not found */
	return (NULL);
}