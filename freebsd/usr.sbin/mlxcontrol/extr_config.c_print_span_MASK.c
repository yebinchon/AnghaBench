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
struct mlx_sys_drv_span {int sp_start_lba; int sp_nblks; int* sp_arm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(struct mlx_sys_drv_span *span, int arms)
{
    int		i;
    
    FUNC0("0x%08x-0x%08x %uMB on", span->sp_start_lba, span->sp_start_lba + span->sp_nblks, span->sp_nblks / 2048);
    for (i = 0; i < arms; i++)
	FUNC0(" disk%02d%02d", span->sp_arm[i] >> 4, span->sp_arm[i] & 0x0f);
    FUNC0("\n");
}