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
typedef  scalar_t__ u_int ;
struct TYPE_2__ {int /*<<< orphan*/ * is_pic; } ;
struct msi_intsrc {TYPE_1__ msi_intsrc; scalar_t__ msi_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MSI ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ first_msi_irq ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct msi_intsrc* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ msi_last_irq ; 
 int /*<<< orphan*/  msi_lock ; 
 int /*<<< orphan*/  msi_pic ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ num_msi_irqs ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct msi_intsrc *msi;
	u_int irq;

	FUNC2(&msi_lock);
	if (msi_last_irq >= num_msi_irqs) {
		FUNC3(&msi_lock);
		return;
	}
	irq = msi_last_irq + first_msi_irq;
	msi_last_irq++;
	FUNC3(&msi_lock);

	msi = FUNC1(sizeof(struct msi_intsrc), M_MSI, M_WAITOK | M_ZERO);
	msi->msi_intsrc.is_pic = &msi_pic;
	msi->msi_irq = irq;
	FUNC0(&msi->msi_intsrc);
	FUNC4(irq);
}