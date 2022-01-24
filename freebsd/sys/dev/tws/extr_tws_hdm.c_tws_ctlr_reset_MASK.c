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
typedef  int u_int32_t ;
typedef  scalar_t__ time_t ;
struct tws_softc {int dummy; } ;
typedef  int boolean ;

/* Variables and functions */
 int TWS_BIT13 ; 
 int /*<<< orphan*/  TWS_I2O0_SCRPD3 ; 
 scalar_t__ TWS_LOCAL_TIME ; 
 scalar_t__ TWS_RESET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*) ; 
 scalar_t__ FUNC2 (struct tws_softc*) ; 
 int FUNC3 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 

boolean
FUNC4(struct tws_softc *sc)
{

    u_int32_t reg;
    time_t endt;
    /* int i=0; */

    FUNC0(sc, "entry", 0, 0);

    FUNC1(sc);

    do {
        reg = FUNC3(sc, TWS_I2O0_SCRPD3, 4);
    } while ( reg & TWS_BIT13 );

    endt = TWS_LOCAL_TIME + TWS_RESET_TIMEOUT;
    do {
        if(FUNC2(sc))
            return(true);
    } while (TWS_LOCAL_TIME <= endt);
    return(false);

}