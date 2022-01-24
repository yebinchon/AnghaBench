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
typedef  int /*<<< orphan*/  uint16_t ;
struct event_ring_data {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,size_t,scalar_t__*) ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc       *sc,
                     struct event_ring_data *eq_data,
                     uint16_t               pfid)
{
    uint32_t addr;
    size_t size;

    addr = (BAR_CSTRORM_INTMEM + FUNC0(pfid));
    size = sizeof(struct event_ring_data);
    FUNC1(sc, addr, size, (uint32_t *)eq_data);
}