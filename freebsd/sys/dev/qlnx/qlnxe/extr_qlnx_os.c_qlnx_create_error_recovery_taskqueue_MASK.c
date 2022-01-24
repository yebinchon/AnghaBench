#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tq_name ;
struct TYPE_5__ {int /*<<< orphan*/ * err_taskqueue; int /*<<< orphan*/  err_task; } ;
typedef  TYPE_1__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qlnx_error_recovery_taskqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha)
{
        uint8_t tq_name[32];

        FUNC2(tq_name, sizeof (tq_name));
        FUNC3(tq_name, sizeof (tq_name), "ql_err_tq");

        FUNC1(&ha->err_task, 0, qlnx_error_recovery_taskqueue, ha);

        ha->err_taskqueue = FUNC4(tq_name, M_NOWAIT,
                                taskqueue_thread_enqueue, &ha->err_taskqueue);


        if (ha->err_taskqueue == NULL)
                return (-1);

        FUNC5(&ha->err_taskqueue, 1, PI_NET, "%s", tq_name);

        FUNC0(ha, "%p\n",ha->err_taskqueue);

        return (0);
}