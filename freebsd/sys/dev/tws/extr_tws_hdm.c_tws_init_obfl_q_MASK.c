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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct tws_softc {int obfl_q_overrun; int /*<<< orphan*/  tws_dev; TYPE_1__* sense_bufs; } ;
struct TYPE_2__ {int hdr_pkt_phy; } ;

/* Variables and functions */
 int TWS_BIT13 ; 
 int /*<<< orphan*/  TWS_I2O0_HOBQPH ; 
 int /*<<< orphan*/  TWS_I2O0_HOBQPL ; 
 int /*<<< orphan*/  TWS_I2O0_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int tws_queue_depth ; 
 int FUNC2 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC4(struct tws_softc *sc)
{
    int i=0;
    u_int64_t paddr;
    u_int32_t paddrh, paddrl, status;

    FUNC0(sc, "entry", 0, sc->obfl_q_overrun);

    while ( i < tws_queue_depth ) {
        paddr = sc->sense_bufs[i].hdr_pkt_phy;
        paddrh = (u_int32_t)( paddr>>32);
        paddrl = (u_int32_t) paddr;
        FUNC3(sc, TWS_I2O0_HOBQPH, paddrh, 4);
        FUNC3(sc, TWS_I2O0_HOBQPL, paddrl, 4);
  
        status = FUNC2(sc, TWS_I2O0_STATUS, 4);
        if ( status & TWS_BIT13 ) {
            FUNC1(sc->tws_dev,  "OBFL Overrun\n");
            sc->obfl_q_overrun = true;
            break;
        }
        i++;
    }

    if ( i == tws_queue_depth )
        sc->obfl_q_overrun = false;
}