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
struct TYPE_2__ {int /*<<< orphan*/  dmat; } ;
struct emu_sc_info {TYPE_1__ mem; } ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */

bus_dma_tag_t
FUNC0(struct emu_sc_info *sc)
{
	return (sc->mem.dmat);
}