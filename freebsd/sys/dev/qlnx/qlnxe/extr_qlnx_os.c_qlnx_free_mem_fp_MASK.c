#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct qlnx_fastpath {int /*<<< orphan*/ * txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  sb_info; } ;
struct TYPE_6__ {int num_tc; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct qlnx_fastpath*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(qlnx_host_t *ha, struct qlnx_fastpath *fp)
{
        int	tc;

        FUNC1(ha, fp->sb_info);

        FUNC0(ha, fp->rxq);

        for (tc = 0; tc < ha->num_tc; tc++)
                FUNC2(ha, fp, fp->txq[tc]);

	return;
}