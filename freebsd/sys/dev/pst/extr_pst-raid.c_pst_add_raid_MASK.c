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
struct pst_softc {struct i2o_lct_entry* lct; struct iop_softc* iop; } ;
struct iop_softc {int /*<<< orphan*/  dev; } ;
struct i2o_lct_entry {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_PSTRAID ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pst_softc*) ; 
 struct pst_softc* FUNC4 (int,int /*<<< orphan*/ ,int) ; 

int
FUNC5(struct iop_softc *sc, struct i2o_lct_entry *lct)
{
    struct pst_softc *psc;
    device_t child = FUNC0(sc->dev, "pst", -1);

    if (!child)
	return ENOMEM;
    if (!(psc = FUNC4(sizeof(struct pst_softc), 
		       M_PSTRAID, M_NOWAIT | M_ZERO))) {
	FUNC1(sc->dev, child);
	return ENOMEM;
    }
    psc->iop = sc;
    psc->lct = lct;
    FUNC3(child, psc);
    return FUNC2(child);
}