#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx_softc {int /*<<< orphan*/  mlx_sgbusaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    struct mlx_softc	*sc = (struct mlx_softc *)arg;

    FUNC0(1);

    /* save base of s/g table's address in bus space */
    sc->mlx_sgbusaddr = segs->ds_addr;
}