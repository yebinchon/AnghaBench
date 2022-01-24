#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
struct ecore_eth_stats {int dummy; } ;
struct ecore_dev {int /*<<< orphan*/ * hwfns; } ;
struct TYPE_17__ {scalar_t__ callout_init; } ;
struct TYPE_18__ {int num_rss; int /*<<< orphan*/  qlnx_callout; TYPE_1__ flags; int /*<<< orphan*/  hw_stats; int /*<<< orphan*/  state; struct ecore_dev cdev; TYPE_13__* irq_vec; int /*<<< orphan*/  num_tc; int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_2__ qlnx_host_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_16__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  handle; int /*<<< orphan*/  irq_rid; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  QLNX_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_13__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  hz ; 
 int mp_ncpus ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  qlnx_fp_isr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  qlnx_timer ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC15(qlnx_host_t *ha)
{
	int			i;
	int			rc = 0;
	struct ecore_dev	*cdev;
        device_t		dev;

	cdev = &ha->cdev;
        dev = ha->pci_dev;

	FUNC1(ha, "enter\n");

        rc = FUNC6(ha);
        if (rc)
                goto qlnx_load_exit0;

        FUNC9(ha);

        rc = FUNC7(ha);
        if (rc)
                goto qlnx_load_exit1;

        FUNC1(ha, "Allocated %d RSS queues on %d TC/s\n",
		   ha->num_rss, ha->num_tc);

	for (i = 0; i < ha->num_rss; i++) {

		if ((rc = FUNC3(dev, ha->irq_vec[i].irq,
                        (INTR_TYPE_NET | INTR_MPSAFE),
                        NULL, qlnx_fp_isr, &ha->irq_vec[i],
                        &ha->irq_vec[i].handle))) {

                        FUNC0(ha, "could not setup interrupt\n");
                        goto qlnx_load_exit2;
		}

		FUNC1(ha, "rss_id = %d irq_rid %d \
			 irq %p handle %p\n", i,
			ha->irq_vec[i].irq_rid,
			ha->irq_vec[i].irq, ha->irq_vec[i].handle);

		FUNC2(dev, ha->irq_vec[i].irq, (i % mp_ncpus));
	}

        rc = FUNC13(ha);
        if (rc)
                goto qlnx_load_exit2;

        FUNC1(ha, "Start VPORT, RXQ and TXQ succeeded\n");

        /* Add primary mac and set Rx filters */
        rc = FUNC12(ha);
        if (rc)
                goto qlnx_load_exit2;

        /* Ask for link-up using current configuration */
	FUNC11(ha, true);

	if (FUNC14(ha) == 0)
		FUNC10(&ha->cdev.hwfns[0]);

        ha->state = QLNX_STATE_OPEN;

	FUNC4(&ha->hw_stats, sizeof(struct ecore_eth_stats));

	if (ha->flags.callout_init)
        	FUNC5(&ha->qlnx_callout, hz, qlnx_timer, ha);

        goto qlnx_load_exit0;

qlnx_load_exit2:
        FUNC8(ha);

qlnx_load_exit1:
        ha->num_rss = 0;

qlnx_load_exit0:
	FUNC1(ha, "exit [%d]\n", rc);
        return rc;
}