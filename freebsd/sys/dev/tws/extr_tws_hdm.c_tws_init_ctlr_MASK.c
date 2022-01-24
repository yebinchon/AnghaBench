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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct tws_softc {int is64bit; int obfl_q_overrun; } ;

/* Variables and functions */
 int FAILURE ; 
 int SUCCESS ; 
 int TWS_FIFO_EMPTY32 ; 
 int /*<<< orphan*/  TWS_I2O0_HOBDBC ; 
 int /*<<< orphan*/  TWS_I2O0_IOPOBQPH ; 
 int /*<<< orphan*/  TWS_I2O0_IOPOBQPL ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*) ; 
 scalar_t__ FUNC2 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*) ; 
 int /*<<< orphan*/  tws_queue_depth ; 
 int FUNC4 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int 
FUNC7(struct tws_softc *sc)
{
    u_int64_t reg;
    u_int32_t regh, regl;

    FUNC0(sc, "entry", sc, sc->is64bit);
    sc->obfl_q_overrun = false;
    if ( FUNC2(sc, tws_queue_depth) )
    {
        FUNC0(sc, "initConnect failed", 0, sc->is64bit);
        return(FAILURE);
        
    }


    while( 1 ) {
        regh = FUNC4(sc, TWS_I2O0_IOPOBQPH, 4);
        regl = FUNC4(sc, TWS_I2O0_IOPOBQPL, 4);
        reg = (((u_int64_t)regh) << 32) | regl;
        FUNC0(sc, "host outbound cleanup",reg, regl);
        if ( regh == TWS_FIFO_EMPTY32 )
            break;
    } 

    FUNC3(sc);
    FUNC1(sc);
    FUNC6(sc, TWS_I2O0_HOBDBC, ~0, 4);
    FUNC5(sc);
    return(SUCCESS);
}