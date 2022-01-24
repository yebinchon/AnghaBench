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
struct cfi_softc {int dummy; } ;
struct cfi_disk_softc {int /*<<< orphan*/  qlock; int /*<<< orphan*/  bioq; struct cfi_softc* parent; } ;
struct bio {int bio_cmd; } ;

/* Variables and functions */
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cfi_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfi_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *arg, int pending)
{
	struct cfi_disk_softc *sc = arg;
	struct cfi_softc *cfi = sc->parent;
	struct bio *bp;

	for (;;) {
		FUNC3(&sc->qlock);
		bp = FUNC0(&sc->bioq);
		FUNC4(&sc->qlock);
		if (bp == NULL)
			break;

		switch (bp->bio_cmd) {
		case BIO_READ:
			FUNC1(cfi, bp);
			break;
		case BIO_WRITE:
			FUNC2(cfi, bp);
			break;
		}
	}
}