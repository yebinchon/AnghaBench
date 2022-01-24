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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ILT_PER_FUNC ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc,
                   uint32_t         func)
{
    uint32_t i, base = FUNC0(func);
    for (i = base; i < base + ILT_PER_FUNC; i++) {
        FUNC1(sc, i, 0);
    }
}