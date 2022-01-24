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
struct powerpc_intr {int trig; int pol; int /*<<< orphan*/  intline; int /*<<< orphan*/ * pic; } ;
typedef  enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef  enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  cold ; 
 struct powerpc_intr* FUNC1 (int) ; 

int
FUNC2(int irq, enum intr_trigger trig, enum intr_polarity pol)
{
	struct powerpc_intr *i;

	i = FUNC1(irq);
	if (i == NULL)
		return (ENOMEM);

	i->trig = trig;
	i->pol = pol;

	if (!cold && i->pic != NULL)
		FUNC0(i->pic, i->intline, trig, pol);

	return (0);
}