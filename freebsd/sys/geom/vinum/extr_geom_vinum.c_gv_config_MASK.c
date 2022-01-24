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
struct sbuf {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
struct g_class {int /*<<< orphan*/  geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_CFG_LEN ; 
 int /*<<< orphan*/  GV_EVENT_RESET_CONFIG ; 
 int /*<<< orphan*/  GV_EVENT_SAVE_CONFIG ; 
 struct g_geom* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*,char*) ; 
 char* FUNC3 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gctl_req*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct gv_softc*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct gv_softc*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_softc*,struct sbuf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC11 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC12 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC13 (struct gv_softc*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct gv_softc*,int /*<<< orphan*/ ,struct gv_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC17 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC18 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC19 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC20 (struct g_geom*,struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC21 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC23 (struct sbuf*) ; 
 scalar_t__ FUNC24 (struct sbuf*) ; 
 struct sbuf* FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char const*,char*) ; 

__attribute__((used)) static void
FUNC27(struct gctl_req *req, struct g_class *mp, char const *verb)
{
	struct g_geom *gp;
	struct gv_softc *sc;
	struct sbuf *sb;
	char *comment;

	FUNC1();

	gp = FUNC0(&mp->geom);
	sc = gp->softc;

	if (!FUNC26(verb, "attach")) {
		FUNC5(sc, req);

	} else if (!FUNC26(verb, "concat")) {
		FUNC6(gp, req);

	} else if (!FUNC26(verb, "detach")) {
		FUNC8(sc, req);

	} else if (!FUNC26(verb, "list")) {
		FUNC10(gp, req);

	/* Save our configuration back to disk. */
	} else if (!FUNC26(verb, "saveconfig")) {
		FUNC14(sc, GV_EVENT_SAVE_CONFIG, sc, NULL, 0, 0);

	/* Return configuration in string form. */
	} else if (!FUNC26(verb, "getconfig")) {
		comment = FUNC3(req, "comment", NULL);
		if (comment == NULL) {
			FUNC2(req, "no comment parameter given");
			return;
		}
		sb = FUNC25(NULL, NULL, GV_CFG_LEN, SBUF_FIXEDLEN);
		FUNC9(sc, sb, 0, comment);
		FUNC23(sb);
		FUNC4(req, "config", FUNC21(sb), FUNC24(sb) + 1);
		FUNC22(sb);

	} else if (!FUNC26(verb, "create")) {
		FUNC7(gp, req);

	} else if (!FUNC26(verb, "mirror")) {
		FUNC11(gp, req);

	} else if (!FUNC26(verb, "move")) {
		FUNC12(gp, req);

	} else if (!FUNC26(verb, "raid5")) {
		FUNC15(gp, req);

	} else if (!FUNC26(verb, "rebuildparity") ||
	    !FUNC26(verb, "checkparity")) {
		FUNC13(sc, req);

	} else if (!FUNC26(verb, "remove")) {
		FUNC16(gp, req);

	} else if (!FUNC26(verb, "rename")) {
		FUNC17(gp, req);
	
	} else if (!FUNC26(verb, "resetconfig")) {
		FUNC14(sc, GV_EVENT_RESET_CONFIG, sc, NULL, 0, 0);

	} else if (!FUNC26(verb, "start")) {
		FUNC19(gp, req);

	} else if (!FUNC26(verb, "stripe")) {
		FUNC20(gp, req);

	} else if (!FUNC26(verb, "setstate")) {
		FUNC18(gp, req);
	} else
		FUNC2(req, "Unknown verb parameter");
}