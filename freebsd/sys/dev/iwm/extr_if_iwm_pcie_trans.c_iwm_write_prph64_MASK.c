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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct iwm_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,scalar_t__,int) ; 

void
FUNC1(struct iwm_softc *sc, uint64_t addr, uint64_t val)
{
	FUNC0(sc, (uint32_t)addr, val & 0xffffffff);
	FUNC0(sc, (uint32_t)addr + 4, val >> 32);
}