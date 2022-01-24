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
struct tws_softc {int dummy; } ;

/* Variables and functions */
 int TWS_BIT2 ; 
 int /*<<< orphan*/  TWS_I2O0_HIMASK ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tws_softc*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC3(struct tws_softc *sc)
{
    u_int32_t reg;

    FUNC0(sc, "entry", 0, 0);
    reg = FUNC1(sc, TWS_I2O0_HIMASK, 4);
    reg = reg | TWS_BIT2;
    FUNC2(sc, TWS_I2O0_HIMASK, reg, 4);
}