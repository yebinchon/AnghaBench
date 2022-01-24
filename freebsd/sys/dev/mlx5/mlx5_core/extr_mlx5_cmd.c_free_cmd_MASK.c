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
struct mlx5_cmd_work_ent {int /*<<< orphan*/  cb_timeout_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_cmd_work_ent*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_cmd_work_ent *ent)
{
        FUNC0(&ent->cb_timeout_work);
	FUNC1(ent);
}