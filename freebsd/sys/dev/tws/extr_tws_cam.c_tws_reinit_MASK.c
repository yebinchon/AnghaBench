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
struct tws_softc {int obfl_q_overrun; int /*<<< orphan*/  is64bit; int /*<<< orphan*/  tws_dev; int /*<<< orphan*/  gen_lock; } ;

/* Variables and functions */
 int TWS_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct tws_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*) ; 
 scalar_t__ FUNC4 (struct tws_softc*) ; 
 scalar_t__ FUNC5 (struct tws_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tws_softc*) ; 
 int /*<<< orphan*/  tws_queue_depth ; 
 int /*<<< orphan*/  FUNC7 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct tws_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
    struct tws_softc *sc = (struct tws_softc *)arg;
    int timeout_val=0;
    int try=2;
    int done=0;


//  device_printf(sc->tws_dev,  "Waiting for Controller Ready\n");
    while ( !done && try ) {
        if ( FUNC4(sc) ) {
            done = 1;
            break;
        } else {
            timeout_val += 5;
            if ( timeout_val >= TWS_RESET_TIMEOUT ) {
               timeout_val = 0;
               if ( try )
                   FUNC3(sc);
               try--;
            }
            FUNC2(sc, &sc->gen_lock, 0, "tws_reinit", 5*hz);
        }
    }

    if (!done) {
        FUNC1(sc->tws_dev,  "FAILED to get Controller Ready!\n");
        return;
    }

    sc->obfl_q_overrun = false;
//  device_printf(sc->tws_dev,  "Sending initConnect\n");
    if ( FUNC5(sc, tws_queue_depth) ) {
        FUNC0(sc, "initConnect failed", 0, sc->is64bit);
    }
    FUNC6(sc);

    FUNC7(sc);

    FUNC8(sc);
}