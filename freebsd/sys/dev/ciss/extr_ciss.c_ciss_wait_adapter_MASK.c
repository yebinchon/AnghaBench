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
struct ciss_softc {TYPE_1__* ciss_cfg; } ;
struct TYPE_2__ {int active_method; } ;

/* Variables and functions */
 int CISS_TRANSPORT_METHOD_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct ciss_softc*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct ciss_softc *sc)
{
    int		i;

    FUNC2(1);

    /*
     * Wait for the adapter to come ready.
     */
    if (!(sc->ciss_cfg->active_method & CISS_TRANSPORT_METHOD_READY)) {
	FUNC1(sc, "waiting for adapter to come ready...\n");
	for (i = 0; !(sc->ciss_cfg->active_method & CISS_TRANSPORT_METHOD_READY); i++) {
	    FUNC0(1000000);	/* one second */
	    if (i > 30) {
		FUNC1(sc, "timed out waiting for adapter to come ready\n");
		return(EIO);
	    }
	}
    }
    return(0);
}