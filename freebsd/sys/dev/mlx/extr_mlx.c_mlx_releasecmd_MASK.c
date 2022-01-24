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
struct mlx_command {TYPE_1__* mc_sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  mlx_freecmds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlx_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mc_link ; 

__attribute__((used)) static void
FUNC3(struct mlx_command *mc)
{
    
    FUNC2(1);

    FUNC0(mc->mc_sc);
    FUNC1(&mc->mc_sc->mlx_freecmds, mc, mc_link);
}