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
struct ciss_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_TL_SIMPLE_IDBR ; 
 int CISS_TL_SIMPLE_IDBR_CFG_TABLE ; 
 int FUNC0 (struct ciss_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(struct ciss_softc *sc)
{
    int		i;

    FUNC3(1);

    FUNC1(sc, CISS_TL_SIMPLE_IDBR, CISS_TL_SIMPLE_IDBR_CFG_TABLE);
    for (i = 0; i < 1000; i++) {
	if (!(FUNC0(sc, CISS_TL_SIMPLE_IDBR) &
	      CISS_TL_SIMPLE_IDBR_CFG_TABLE)) {
	    return(0);
	}
	FUNC2(1000);
    }
    return(1);
}