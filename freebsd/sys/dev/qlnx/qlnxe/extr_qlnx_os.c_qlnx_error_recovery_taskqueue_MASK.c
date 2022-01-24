#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  qlnx_callout; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  qlnx_timer ; 

__attribute__((used)) static void
FUNC10(void *context, int pending)
{
        qlnx_host_t *ha;

        ha = context;

        FUNC2(ha, "enter\n");

        FUNC0(ha);
        FUNC9(ha);
        FUNC1(ha);

#ifdef QLNX_ENABLE_IWARP
	qlnx_rdma_dev_remove(ha);
#endif /* #ifdef QLNX_ENABLE_IWARP */

        FUNC8(ha);
        FUNC7(ha);

#ifdef QLNX_ENABLE_IWARP
	qlnx_rdma_dev_add(ha);
#endif /* #ifdef QLNX_ENABLE_IWARP */

        FUNC4(ha);

        FUNC3(&ha->qlnx_callout, hz, qlnx_timer, ha);

        FUNC2(ha, "exit\n");

        return;
}