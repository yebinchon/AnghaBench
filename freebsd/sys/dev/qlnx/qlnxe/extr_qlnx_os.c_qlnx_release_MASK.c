#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct qlnx_fastpath {int dummy; } ;
struct TYPE_19__ {scalar_t__ lock_init; scalar_t__ hw_init; scalar_t__ slowpath_start; scalar_t__ callout_init; } ;
struct TYPE_17__ {int num_hwfns; } ;
struct TYPE_20__ {int num_rss; scalar_t__ msix_bar; int /*<<< orphan*/  msix_rid; scalar_t__ pci_dbells; int /*<<< orphan*/  dbells_rid; scalar_t__ dbells_size; scalar_t__ pci_reg; int /*<<< orphan*/  reg_rid; int /*<<< orphan*/  hw_lock; TYPE_2__ flags; scalar_t__ msix_count; scalar_t__* sp_irq; int /*<<< orphan*/ * sp_irq_rid; scalar_t__* sp_handle; TYPE_15__ cdev; TYPE_1__* irq_vec; struct qlnx_fastpath* fp_array; int /*<<< orphan*/ * ifp; int /*<<< orphan*/  qlnx_callout; int /*<<< orphan*/ ** grcdump; int /*<<< orphan*/ ** idle_chk; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_3__ qlnx_host_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_18__ {scalar_t__ irq; int /*<<< orphan*/  irq_rid; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_QLNXBUF ; 
 int QLNX_MAX_HW_FUNCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,struct qlnx_fastpath*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 scalar_t__ FUNC18 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC19(qlnx_host_t *ha)
{
        device_t	dev;
        int		i;

        dev = ha->pci_dev;

	FUNC0(ha, "enter\n");

	for (i = 0; i < QLNX_MAX_HW_FUNCS; i++) {
		if (ha->idle_chk[i] != NULL) {
			FUNC6(ha->idle_chk[i], M_QLNXBUF);
			ha->idle_chk[i] = NULL;
		}

		if (ha->grcdump[i] != NULL) {
			FUNC6(ha->grcdump[i], M_QLNXBUF);
			ha->grcdump[i] = NULL;
		}
	}

        if (ha->flags.callout_init)
                FUNC3(&ha->qlnx_callout);

	if (ha->flags.slowpath_start) {
		FUNC17(ha);
	}

        if (ha->flags.hw_init)
		FUNC4(&ha->cdev);

        FUNC9(ha);

        if (ha->ifp != NULL)
                FUNC5(ha->ifp);

	FUNC16(ha);

	FUNC14(ha);

	FUNC13(ha);

	if (FUNC18(ha) != 0) {
		FUNC10(ha);
	}

        for (i = 0; i < ha->num_rss; i++) {
		struct qlnx_fastpath *fp = &ha->fp_array[i];

                if (ha->irq_vec[i].handle) {
                        (void)FUNC2(dev, ha->irq_vec[i].irq,
                                        ha->irq_vec[i].handle);
                }

                if (ha->irq_vec[i].irq) {
                        (void)FUNC1(dev, SYS_RES_IRQ,
                                ha->irq_vec[i].irq_rid,
                                ha->irq_vec[i].irq);
                }

		FUNC15(ha, fp);
        }
	FUNC11(ha);

 	for (i = 0; i < ha->cdev.num_hwfns; i++) {
        	if (ha->sp_handle[i])
                	(void)FUNC2(dev, ha->sp_irq[i],
				ha->sp_handle[i]);

        	if (ha->sp_irq[i])
			(void) FUNC1(dev, SYS_RES_IRQ,
				ha->sp_irq_rid[i], ha->sp_irq[i]);
	}

	FUNC12(ha);

        if (ha->msix_count)
                FUNC8(dev);

        if (ha->flags.lock_init) {
                FUNC7(&ha->hw_lock);
        }

        if (ha->pci_reg)
                (void) FUNC1(dev, SYS_RES_MEMORY, ha->reg_rid,
                                ha->pci_reg);

        if (ha->dbells_size && ha->pci_dbells)
                (void) FUNC1(dev, SYS_RES_MEMORY, ha->dbells_rid,
                                ha->pci_dbells);

        if (ha->msix_bar)
                (void) FUNC1(dev, SYS_RES_MEMORY, ha->msix_rid,
                                ha->msix_bar);

	FUNC0(ha, "exit\n");
	return;
}