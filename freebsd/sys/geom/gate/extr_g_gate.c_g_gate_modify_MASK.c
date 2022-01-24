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
struct g_provider {int sectorsize; scalar_t__ mediasize; int /*<<< orphan*/  name; int /*<<< orphan*/  geom; } ;
struct g_gate_softc {scalar_t__ sc_readoffset; struct g_consumer* sc_readcons; struct g_provider* sc_provider; int /*<<< orphan*/  sc_info; } ;
struct g_gate_ctl_modify {int gctl_modify; int gctl_mediasize; char* gctl_readprov; int gctl_readoffset; int /*<<< orphan*/  gctl_info; } ;
struct g_consumer {int flags; TYPE_1__* provider; } ;
struct TYPE_2__ {scalar_t__ mediasize; } ;

/* Variables and functions */
 int EINVAL ; 
 int GG_MODIFY_INFO ; 
 int GG_MODIFY_MEDIASIZE ; 
 int GG_MODIFY_READOFFSET ; 
 int GG_MODIFY_READPROV ; 
 int G_CF_DIRECT_RECEIVE ; 
 int G_CF_DIRECT_SEND ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (struct g_consumer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct g_consumer*,struct g_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_consumer*) ; 
 struct g_consumer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_provider*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(struct g_gate_softc *sc, struct g_gate_ctl_modify *ggio)
{
	struct g_provider *pp;
	struct g_consumer *cp;
	int error;

	if ((ggio->gctl_modify & GG_MODIFY_MEDIASIZE) != 0) {
		if (ggio->gctl_mediasize <= 0) {
			FUNC0(1, "Invalid media size.");
			return (EINVAL);
		}
		pp = sc->sc_provider;
		if ((ggio->gctl_mediasize % pp->sectorsize) != 0) {
			FUNC0(1, "Invalid media size.");
			return (EINVAL);
		}
		FUNC7(pp, ggio->gctl_mediasize);
		return (0);
	}

	if ((ggio->gctl_modify & GG_MODIFY_INFO) != 0)
		(void)FUNC10(sc->sc_info, ggio->gctl_info, sizeof(sc->sc_info));

	cp = NULL;

	if ((ggio->gctl_modify & GG_MODIFY_READPROV) != 0) {
		FUNC8();
		if (sc->sc_readcons != NULL) {
			cp = sc->sc_readcons;
			sc->sc_readcons = NULL;
			(void)FUNC1(cp, -1, 0, 0);
			FUNC4(cp);
			FUNC3(cp);
		}
		if (ggio->gctl_readprov[0] != '\0') {
			pp = FUNC6(ggio->gctl_readprov);
			if (pp == NULL) {
				FUNC9();
				FUNC0(1, "Provider %s doesn't exist.",
				    ggio->gctl_readprov);
				return (EINVAL);
			}
			cp = FUNC5(sc->sc_provider->geom);
			cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
			error = FUNC2(cp, pp);
			if (error != 0) {
				FUNC0(1, "Unable to attach to %s.",
				    pp->name);
			} else {
				error = FUNC1(cp, 1, 0, 0);
				if (error != 0) {
					FUNC0(1, "Unable to access %s.",
					    pp->name);
					FUNC4(cp);
				}
			}
			if (error != 0) {
				FUNC3(cp);
				FUNC9();
				return (error);
			}
		}
	} else {
		cp = sc->sc_readcons;
	}

	if ((ggio->gctl_modify & GG_MODIFY_READOFFSET) != 0) {
		if (cp == NULL) {
			FUNC0(1, "No read provider.");
			return (EINVAL);
		}
		pp = sc->sc_provider;
		if ((ggio->gctl_readoffset % pp->sectorsize) != 0) {
			FUNC0(1, "Invalid read offset.");
			return (EINVAL);
		}
		if (pp->mediasize + ggio->gctl_readoffset >
		    cp->provider->mediasize) {
			FUNC0(1, "Invalid read offset or media size.");
			return (EINVAL);
		}
		sc->sc_readoffset = ggio->gctl_readoffset;
	}

	if ((ggio->gctl_modify & GG_MODIFY_READPROV) != 0) {
		sc->sc_readcons = cp;
		FUNC9();
	}

	return (0);
}