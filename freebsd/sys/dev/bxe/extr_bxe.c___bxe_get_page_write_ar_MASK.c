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
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  const* page_write_regs_e2 ; 
 int /*<<< orphan*/  const* page_write_regs_e3 ; 

__attribute__((used)) static const uint32_t *
FUNC2(struct bxe_softc *sc)
{
    if (FUNC0(sc))
        return page_write_regs_e2;
    else if (FUNC1(sc))
        return page_write_regs_e3;
    else
        return NULL;
}