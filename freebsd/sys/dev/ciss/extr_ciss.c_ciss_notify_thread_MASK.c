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
struct ciss_softc {int ciss_flags; int /*<<< orphan*/  ciss_mtx; int /*<<< orphan*/ * ciss_notify_thread; int /*<<< orphan*/  ciss_notify; } ;
struct ciss_request {scalar_t__ cr_data; } ;
struct ciss_notify {int class; } ;

/* Variables and functions */
 int CISS_FLAG_THREAD_SHUT ; 
#define  CISS_NOTIFY_HOTPLUG 130 
#define  CISS_NOTIFY_LOGICAL 129 
#define  CISS_NOTIFY_PHYSICAL 128 
 int /*<<< orphan*/  PUSER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct ciss_request* FUNC1 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,struct ciss_notify*) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,struct ciss_notify*) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_softc*,struct ciss_notify*) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
    struct ciss_softc		*sc;
    struct ciss_request		*cr;
    struct ciss_notify		*cn;

    sc = (struct ciss_softc *)arg;
    FUNC8(&sc->ciss_mtx);

    for (;;) {
	if (FUNC0(&sc->ciss_notify) != 0 &&
	    (sc->ciss_flags & CISS_FLAG_THREAD_SHUT) == 0) {
	    FUNC7(&sc->ciss_notify, &sc->ciss_mtx, PUSER, "idle", 0);
	}

	if (sc->ciss_flags & CISS_FLAG_THREAD_SHUT)
	    break;

	cr = FUNC1(sc);

	if (cr == NULL)
		FUNC10("cr null");
	cn = (struct ciss_notify *)cr->cr_data;

	switch (cn->class) {
	case CISS_NOTIFY_HOTPLUG:
	    FUNC2(sc, cn);
	    break;
	case CISS_NOTIFY_LOGICAL:
	    FUNC3(sc, cn);
	    break;
	case CISS_NOTIFY_PHYSICAL:
	    FUNC4(sc, cn);
	    break;
	}

	FUNC5(cr);

    }
    sc->ciss_notify_thread = NULL;
    FUNC11(&sc->ciss_notify_thread);

    FUNC9(&sc->ciss_mtx);
    FUNC6(0);
}