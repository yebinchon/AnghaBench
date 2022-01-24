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
struct gv_volume {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct gv_plex {scalar_t__ state; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct gv_drive {int dummy; } ;

/* Variables and functions */
 int GV_MAXARGS ; 
 int /*<<< orphan*/  GV_PLEX_ADDED ; 
 int /*<<< orphan*/  GV_SD_CANGOUP ; 
 int /*<<< orphan*/  GV_SD_GROW ; 
 int /*<<< orphan*/  GV_SD_NEWBORN ; 
 int /*<<< orphan*/  GV_SD_TASTED ; 
 scalar_t__ GV_SD_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gv_volume*) ; 
 int FUNC2 (struct gv_softc*,struct gv_volume*) ; 
 int FUNC3 (struct gv_softc*,struct gv_volume*) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_softc*,struct gv_volume*) ; 
 int FUNC5 (struct gv_softc*,struct gv_drive*) ; 
 struct gv_volume* FUNC6 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 struct gv_volume* FUNC7 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 struct gv_volume* FUNC8 (struct gv_softc*,int /*<<< orphan*/ ) ; 
 struct gv_volume* FUNC9 (int,char**) ; 
 struct gv_volume* FUNC10 (int,char**) ; 
 struct gv_volume* FUNC11 (int,char**) ; 
 int FUNC12 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

void
FUNC14(struct gv_softc *sc, char *buf, struct gv_drive *d)
{
	char *aptr, *bptr, *cptr;
	struct gv_volume *v, *v2;
	struct gv_plex *p, *p2;
	struct gv_sd *s, *s2;
	int error, is_newer, tokens;
	char *token[GV_MAXARGS];

	is_newer = FUNC5(sc, d);

	/* Until the end of the string *buf. */
	for (aptr = buf; *aptr != '\0'; aptr = bptr) {
		bptr = aptr;
		cptr = aptr;

		/* Separate input lines. */
		while (*bptr != '\n')
			bptr++;
		*bptr = '\0';
		bptr++;

		tokens = FUNC12(cptr, token, GV_MAXARGS);

		if (tokens <= 0)
			continue;

		if (!FUNC13(token[0], "volume")) {
			v = FUNC11(tokens, token);
			if (v == NULL) {
				FUNC0(0, "config parse failed volume");
				break;
			}

			v2 = FUNC8(sc, v->name);
			if (v2 != NULL) {
				if (is_newer) {
					v2->state = v->state;
					FUNC0(2, "newer volume found!");
				}
				FUNC1(v);
				continue;
			}

			FUNC4(sc, v);

		} else if (!FUNC13(token[0], "plex")) {
			p = FUNC9(tokens, token);
			if (p == NULL) {
				FUNC0(0, "config parse failed plex");
				break;
			}

			p2 = FUNC6(sc, p->name);
			if (p2 != NULL) {
				/* XXX */
				if (is_newer) {
					p2->state = p->state;
					FUNC0(2, "newer plex found!");
				}
				FUNC1(p);
				continue;
			}

			error = FUNC2(sc, p);
			if (error)
				continue;
			/*
			 * These flags were set in gv_create_plex() and are not
			 * needed here (on-disk config parsing).
			 */
			p->flags &= ~GV_PLEX_ADDED;

		} else if (!FUNC13(token[0], "sd")) {
			s = FUNC10(tokens, token);

			if (s == NULL) {
				FUNC0(0, "config parse failed subdisk");
				break;
			}

			s2 = FUNC7(sc, s->name);
			if (s2 != NULL) {
				/* XXX */
				if (is_newer) {
					s2->state = s->state;
					FUNC0(2, "newer subdisk found!");
				}
				FUNC1(s);
				continue;
			}

			/*
			 * Signal that this subdisk was tasted, and could
			 * possibly reference a drive that isn't in our config
			 * yet.
			 */
			s->flags |= GV_SD_TASTED;

			if (s->state == GV_SD_UP)
				s->flags |= GV_SD_CANGOUP;

			error = FUNC3(sc, s);
			if (error)
				continue;

			/*
			 * This flag was set in gv_create_sd() and is not
			 * needed here (on-disk config parsing).
			 */
			s->flags &= ~GV_SD_NEWBORN;
			s->flags &= ~GV_SD_GROW;
		}
	}
}