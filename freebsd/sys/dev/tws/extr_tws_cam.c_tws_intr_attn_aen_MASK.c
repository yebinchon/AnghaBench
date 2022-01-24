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
struct tws_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWS_BIT18 ; 
 int /*<<< orphan*/  TWS_I2O0_HOBDBC ; 
 int /*<<< orphan*/  TWS_I2O0_IOBDB ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct tws_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tws_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct tws_softc *sc)
{
    u_int32_t db=0;

    /* maskoff db intrs until all the aens are fetched */
    /* tws_disable_db_intr(sc); */
    FUNC0((void *)sc);
    FUNC2(sc, TWS_I2O0_HOBDBC, TWS_BIT18, 4);
    db = FUNC1(sc, TWS_I2O0_IOBDB, 4);

}