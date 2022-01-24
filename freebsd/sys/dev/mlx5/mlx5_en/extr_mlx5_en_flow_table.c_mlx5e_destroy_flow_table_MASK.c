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
struct mlx5e_flow_table {int /*<<< orphan*/ * t; int /*<<< orphan*/  g; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_flow_table*) ; 

__attribute__((used)) static void
FUNC3(struct mlx5e_flow_table *ft)
{
	FUNC2(ft);
	FUNC0(ft->g);
	FUNC1(ft->t);
	ft->t = NULL;
}