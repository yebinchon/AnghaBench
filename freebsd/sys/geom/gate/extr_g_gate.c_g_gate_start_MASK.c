#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct g_gate_softc {int sc_flags; TYPE_3__* sc_readcons; scalar_t__ sc_readoffset; } ;
struct bio {int bio_cmd; TYPE_2__* bio_to; scalar_t__ bio_offset; int /*<<< orphan*/  bio_done; } ;
struct TYPE_6__ {TYPE_2__* provider; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct g_gate_softc* softc; } ;

/* Variables and functions */
#define  BIO_DELETE 132 
#define  BIO_FLUSH 131 
#define  BIO_GETATTR 130 
#define  BIO_READ 129 
#define  BIO_WRITE 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  EPERM ; 
 int G_GATE_FLAG_DESTROY ; 
 int G_GATE_FLAG_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*) ; 
 struct bio* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  g_gate_done ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC5(struct bio *pbp)
{
	struct g_gate_softc *sc;

	sc = pbp->bio_to->geom->softc;
	if (sc == NULL || (sc->sc_flags & G_GATE_FLAG_DESTROY) != 0) {
		FUNC3(pbp, ENXIO);
		return;
	}
	FUNC0(2, pbp, "Request received.");
	switch (pbp->bio_cmd) {
	case BIO_READ:
		if (sc->sc_readcons != NULL) {
			struct bio *cbp;

			cbp = FUNC1(pbp);
			if (cbp == NULL) {
				FUNC3(pbp, ENOMEM);
				return;
			}
			cbp->bio_done = g_gate_done;
			cbp->bio_offset = pbp->bio_offset + sc->sc_readoffset;
			cbp->bio_to = sc->sc_readcons->provider;
			FUNC4(cbp, sc->sc_readcons);
			return;
		}
		break;
	case BIO_DELETE:
	case BIO_WRITE:
	case BIO_FLUSH:
		/* XXX: Hack to allow read-only mounts. */
		if ((sc->sc_flags & G_GATE_FLAG_READONLY) != 0) {
			FUNC3(pbp, EPERM);
			return;
		}
		break;
	case BIO_GETATTR:
	default:
		FUNC0(2, pbp, "Ignoring request.");
		FUNC3(pbp, EOPNOTSUPP);
		return;
	}

	FUNC2(pbp);
}