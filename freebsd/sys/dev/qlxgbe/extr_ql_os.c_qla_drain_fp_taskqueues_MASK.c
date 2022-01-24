#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * fp_taskqueue; } ;
typedef  TYPE_2__ qla_tx_fp_t ;
struct TYPE_5__ {int num_sds_rings; } ;
struct TYPE_7__ {TYPE_2__* tx_fp; TYPE_1__ hw; } ;
typedef  TYPE_3__ qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(qla_host_t *ha)
{
        int     i;

        for (i = 0; i < ha->hw.num_sds_rings; i++) {
                qla_tx_fp_t *fp = &ha->tx_fp[i];

                if (fp->fp_taskqueue != NULL) {
                        FUNC0(fp->fp_taskqueue);
                }
        }
        return;
}