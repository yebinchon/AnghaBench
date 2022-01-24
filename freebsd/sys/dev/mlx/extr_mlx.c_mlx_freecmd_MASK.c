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
struct mlx_softc {int /*<<< orphan*/  mlx_buffer_dmat; } ;
struct mlx_command {int /*<<< orphan*/  mc_dmamap; struct mlx_softc* mc_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mlx_command *mc) 
{
    struct mlx_softc	*sc = mc->mc_sc;
    
    FUNC1(1);
    FUNC0(sc->mlx_buffer_dmat, mc->mc_dmamap);
    FUNC2(mc, M_DEVBUF);
}