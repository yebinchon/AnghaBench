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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,int,int,int) ; 

void
FUNC3(struct bxe_softc *sc,
                             uint8_t          fw_sb_id,
                             uint8_t          sb_index,
                             uint8_t          disable,
                             uint16_t         usec)
{
    int port = FUNC0(sc);
    uint8_t ticks = (usec / 4); /* XXX ??? */

    FUNC2(sc, port, fw_sb_id, sb_index, ticks);

    disable = (disable) ? 1 : ((usec) ? 0 : 1);
    FUNC1(sc, port, fw_sb_id, sb_index, disable);
}