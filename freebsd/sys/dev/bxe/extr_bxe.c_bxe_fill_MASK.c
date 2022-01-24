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
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct bxe_softc *sc,
         uint32_t         addr,
         int              fill,
         uint32_t         len)
{
    uint32_t i;

    if (!(len % 4) && !(addr % 4)) {
        for (i = 0; i < len; i += 4) {
            FUNC0(sc, (addr + i), fill);
        }
    } else {
        for (i = 0; i < len; i++) {
            FUNC1(sc, (addr + i), fill);
        }
    }
}