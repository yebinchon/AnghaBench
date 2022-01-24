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
struct otus_softc {int /*<<< orphan*/  sc_dev; } ;
struct otus_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * buf; int /*<<< orphan*/ * m; struct otus_softc* sc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_USBDEV ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*,struct otus_data*,int) ; 

__attribute__((used)) static int
FUNC3(struct otus_softc *sc, struct otus_data data[],
    int ndata, int maxsz)
{
	int i, error;

	for (i = 0; i < ndata; i++) {
		struct otus_data *dp = &data[i];
		dp->sc = sc;
		dp->m = NULL;
		dp->buf = FUNC1(maxsz, M_USBDEV, M_NOWAIT | M_ZERO);
		if (dp->buf == NULL) {
			FUNC0(sc->sc_dev,
			    "could not allocate buffer\n");
			error = ENOMEM;
			goto fail;
		}
		dp->ni = NULL;
	}

	return (0);
fail:
	FUNC2(sc, data, ndata);
	return (error);
}