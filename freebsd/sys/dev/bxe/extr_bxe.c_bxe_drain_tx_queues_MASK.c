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
struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct bxe_fastpath*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i, count;

    /* wait until all TX fastpath tasks have completed */
    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

        count = 1000;

        while (FUNC4(fp)) {

            FUNC1(fp);
            FUNC6(sc, fp);
            FUNC2(fp);

            if (count == 0) {
                FUNC0(sc, "Timeout waiting for fp[%d] "
                          "transmits to complete!\n", i);
                FUNC5(sc, ("tx drain failure\n"));
                return;
            }

            count--;
            FUNC3(1000);
            FUNC7();
        }
    }

    return;
}