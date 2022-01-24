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
typedef  scalar_t__ uint8_t ;
struct bxe_softc {int /*<<< orphan*/  ifp; } ;
struct bxe_fastpath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_Q_FLG_LEADING_RSS ; 
 int /*<<< orphan*/  ECORE_Q_FLG_MCAST ; 
 int /*<<< orphan*/  ECORE_Q_FLG_OV ; 
 int /*<<< orphan*/  ECORE_Q_FLG_TPA ; 
 int /*<<< orphan*/  ECORE_Q_FLG_TPA_IPV6 ; 
 int /*<<< orphan*/  ECORE_Q_FLG_VLAN ; 
 int IFCAP_LRO ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  TRUE ; 
 unsigned long FUNC1 (struct bxe_softc*,struct bxe_fastpath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC4(struct bxe_softc    *sc,
                struct bxe_fastpath *fp,
                uint8_t             leading)
{
    unsigned long flags = 0;

    if (FUNC0(sc)) {
        FUNC2(ECORE_Q_FLG_OV, &flags);
    }

    if (FUNC3(sc->ifp) & IFCAP_LRO) {
        FUNC2(ECORE_Q_FLG_TPA, &flags);
#if __FreeBSD_version >= 800000
        bxe_set_bit(ECORE_Q_FLG_TPA_IPV6, &flags);
#endif
    }

    if (leading) {
        FUNC2(ECORE_Q_FLG_LEADING_RSS, &flags);
        FUNC2(ECORE_Q_FLG_MCAST, &flags);
    }

    FUNC2(ECORE_Q_FLG_VLAN, &flags);

    /* merge with common flags */
    return (flags | FUNC1(sc, fp, TRUE));
}