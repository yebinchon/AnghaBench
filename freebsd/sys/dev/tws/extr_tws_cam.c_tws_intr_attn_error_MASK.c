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
typedef  int /*<<< orphan*/  u_int32_t ;
struct tws_softc {int /*<<< orphan*/  tws_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWS_I2O0_HOBDBC ; 
 int /*<<< orphan*/  TWS_I2O0_IOBDB ; 
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tws_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct tws_softc *sc)
{
    u_int32_t db=0;

    FUNC0(sc, "attn error", 0, 0);
    FUNC4(sc, TWS_I2O0_HOBDBC, ~0, 4);
    db = FUNC2(sc, TWS_I2O0_IOBDB, 4);
    FUNC1(sc->tws_dev, "Micro controller error.\n");
    FUNC3(sc);
}