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
typedef  int /*<<< orphan*/  u_int ;
struct gctl_req {int dummy; } ;
struct g_provider {int stripesize; int sectorsize; int /*<<< orphan*/  mediasize; scalar_t__ stripeoffset; int /*<<< orphan*/  name; } ;
struct g_geom {struct g_bde_softc* softc; int /*<<< orphan*/  name; } ;
struct g_consumer {TYPE_1__* provider; } ;
struct g_class {int /*<<< orphan*/  name; } ;
struct g_bde_key {int keys_per_sector; int sectorsize; int zone_cont; int zone_width; scalar_t__ sector0; scalar_t__ sectorN; scalar_t__ media_width; } ;
struct g_bde_softc {void* sha2; int zone_cont; int sectorsize; int /*<<< orphan*/  mediasize; int /*<<< orphan*/  thread; int /*<<< orphan*/  worklist_mutex; int /*<<< orphan*/  worklist; int /*<<< orphan*/  freelist; struct g_bde_key key; struct g_consumer* consumer; struct g_geom* geom; } ;
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_2__ {int /*<<< orphan*/  mediasize; int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
#define  EINVAL 131 
#define  ENOENT 130 
#define  ENOTDIR 129 
#define  ESRCH 128 
 int G_BDE_MAXKEYS ; 
 int G_BDE_SKEYLEN ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (struct g_consumer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*,struct g_provider*) ; 
 int FUNC4 (struct g_bde_softc*,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct g_bde_key*) ; 
 int /*<<< orphan*/  g_bde_worker ; 
 int /*<<< orphan*/  FUNC6 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct g_bde_softc*) ; 
 struct g_bde_softc* FUNC11 (int,int) ; 
 struct g_consumer* FUNC12 (struct g_geom*) ; 
 struct g_geom* FUNC13 (struct g_class*,char*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC14 (struct g_geom*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct gctl_req*,char*,...) ; 
 void* FUNC18 (struct gctl_req*,char*,int*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct g_geom*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct gctl_req *req, struct g_class *mp, struct g_provider *pp)
{
	struct g_geom *gp;
	struct g_consumer *cp;
	struct g_bde_key *kp;
	int error, i;
	u_int sectorsize;
	off_t mediasize;
	struct g_bde_softc *sc;
	void *pass;
	void *key;

	FUNC16(G_T_TOPOLOGY, "g_bde_create_geom(%s, %s)", mp->name, pp->name);
	FUNC15();
	gp = NULL;


	gp = FUNC13(mp, "%s.bde", pp->name);
	cp = FUNC12(gp);
	FUNC3(cp, pp);
	error = FUNC2(cp, 1, 1, 1);
	if (error) {
		FUNC8(cp);
		FUNC6(cp);
		FUNC7(gp);
		FUNC17(req, "could not access consumer");
		return;
	}
	pass = NULL;
	key = NULL;
	do {
		pass = FUNC18(req, "pass", &i);
		if (pass == NULL || i != SHA512_DIGEST_LENGTH) {
			FUNC17(req, "No usable key presented");
			break;
		}
		key = FUNC18(req, "key", &i);
		if (key != NULL && i != 16) {
			FUNC17(req, "Invalid key presented");
			break;
		}
		sectorsize = cp->provider->sectorsize;
		mediasize = cp->provider->mediasize;
		sc = FUNC11(sizeof(struct g_bde_softc), M_WAITOK | M_ZERO);
		gp->softc = sc;
		sc->geom = gp;
		sc->consumer = cp;

		error = FUNC4(sc, pass, key,
		    mediasize, sectorsize, NULL);
		FUNC1(sc->sha2, sizeof sc->sha2);
		if (error)
			break;
		kp = &sc->key;

		/* Initialize helper-fields */
		kp->keys_per_sector = kp->sectorsize / G_BDE_SKEYLEN;
		kp->zone_cont = kp->keys_per_sector * kp->sectorsize;
		kp->zone_width = kp->zone_cont + kp->sectorsize;
		kp->media_width = kp->sectorN - kp->sector0 -
		    G_BDE_MAXKEYS * kp->sectorsize;

		/* Our external parameters */
		sc->zone_cont = kp->zone_cont;
		sc->mediasize = FUNC5(kp);
		sc->sectorsize = kp->sectorsize;

		FUNC0(&sc->freelist);
		FUNC0(&sc->worklist);
		FUNC20(&sc->worklist_mutex, "g_bde_worklist", NULL, MTX_DEF);
		/* XXX: error check */
		FUNC19(g_bde_worker, gp, &sc->thread, 0, 0,
			"g_bde %s", gp->name);
		pp = FUNC14(gp, "%s", gp->name);
		pp->stripesize = kp->zone_cont;
		pp->stripeoffset = 0;
		pp->mediasize = sc->mediasize;
		pp->sectorsize = sc->sectorsize;
		FUNC9(pp, 0);
		break;
	} while (0);
	if (pass != NULL)
		FUNC1(pass, SHA512_DIGEST_LENGTH);
	if (key != NULL)
		FUNC1(key, 16);
	if (error == 0)
		return;
	FUNC2(cp, -1, -1, -1);
	FUNC8(cp);
	FUNC6(cp);
	if (gp->softc != NULL)
		FUNC10(gp->softc);
	FUNC7(gp);
	switch (error) {
	case ENOENT:
		FUNC17(req, "Lock was destroyed");
		break;
	case ESRCH:
		FUNC17(req, "Lock was nuked");
		break;
	case EINVAL:
		FUNC17(req, "Could not open lock");
		break;
	case ENOTDIR:
		FUNC17(req, "Lock not found");
		break;
	default:
		FUNC17(req, "Could not open lock (%d)", error);
		break;
	}
	return;
}