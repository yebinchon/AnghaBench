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
struct TYPE_2__ {int /*<<< orphan*/ * hwfns; } ;
struct qlnx_host {TYPE_1__ cdev; } ;

/* Variables and functions */
 int QLNX_NUM_CNQ ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC1(struct qlnx_host *ha)
{
        return (QLNX_NUM_CNQ + FUNC0(&ha->cdev.hwfns[0], 0) + 2);
}