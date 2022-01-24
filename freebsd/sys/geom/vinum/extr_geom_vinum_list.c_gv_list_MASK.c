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
struct gv_volume {int dummy; } ;
struct gv_softc {int dummy; } ;
struct gv_sd {int dummy; } ;
struct gv_plex {int dummy; } ;
struct gv_drive {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_geom {struct gv_softc* softc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_CFG_LEN ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct gctl_req*,char*,...) ; 
 char* FUNC1 (struct gctl_req*,char*,int /*<<< orphan*/ *) ; 
 int* FUNC2 (struct gctl_req*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gctl_req*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct gv_drive* FUNC4 (struct gv_softc*,char*) ; 
 struct gv_plex* FUNC5 (struct gv_softc*,char*) ; 
 struct gv_sd* FUNC6 (struct gv_softc*,char*) ; 
 struct gv_volume* FUNC7 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_geom*,struct gctl_req*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct gv_drive*,struct sbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct g_geom*,struct gctl_req*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct gv_plex*,struct sbuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct g_geom*,struct gctl_req*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct gv_sd*,struct sbuf*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct g_geom*,struct gctl_req*,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct gv_volume*,struct sbuf*,int) ; 
 int FUNC16 (struct gv_softc*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct sbuf*) ; 
 scalar_t__ FUNC20 (struct sbuf*) ; 
 struct sbuf* FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*) ; 

void
FUNC25(struct g_geom *gp, struct gctl_req *req)
{
	struct gv_softc *sc;
	struct gv_drive *d;
	struct gv_plex *p;
	struct gv_sd *s;
	struct gv_volume *v;
	struct sbuf *sb;
	int *argc, i, *flags, type;
	char *arg, buf[20], *cmd;

	argc = FUNC2(req, "argc", sizeof(*argc));

	if (argc == NULL) {
		FUNC0(req, "no arguments given");
		return;
	}

	flags = FUNC2(req, "flags", sizeof(*flags));
	if (flags == NULL) {
		FUNC0(req, "no flags given");
		return;
	}

	sc = gp->softc;

	sb = FUNC21(NULL, NULL, GV_CFG_LEN, SBUF_FIXEDLEN);

	/* Figure out which command was given. */
	cmd = FUNC1(req, "cmd", NULL);
	if (cmd == NULL) {
		FUNC0(req, "no command given");
		return;
	}

	/* List specific objects or everything. */
	if (!FUNC24(cmd, "list") || !FUNC24(cmd, "l")) {
		if (*argc) {
			for (i = 0; i < *argc; i++) {
				FUNC23(buf, sizeof(buf), "argv%d", i);
				arg = FUNC1(req, buf, NULL);
				if (arg == NULL)
					continue;
				type = FUNC16(sc, arg);
				switch (type) {
				case GV_TYPE_VOL:
					v = FUNC7(sc, arg);
					FUNC15(v, sb, *flags);
					break;
				case GV_TYPE_PLEX:
					p = FUNC5(sc, arg);
					FUNC11(p, sb, *flags);
					break;
				case GV_TYPE_SD:
					s = FUNC6(sc, arg);
					FUNC13(s, sb, *flags);
					break;
				case GV_TYPE_DRIVE:
					d = FUNC4(sc, arg);
					FUNC9(d, sb, *flags);
					break;
				default:
					FUNC0(req, "unknown object '%s'",
					    arg);
					break;
				}
			}
		} else {
			FUNC8(gp, req, sb);
			FUNC22(sb, "\n");
			FUNC14(gp, req, sb);
			FUNC22(sb, "\n");
			FUNC10(gp, req, sb);
			FUNC22(sb, "\n");
			FUNC12(gp, req, sb);
		}

	/* List drives. */
	} else if (!FUNC24(cmd, "ld")) {
		if (*argc) {
			for (i = 0; i < *argc; i++) {
				FUNC23(buf, sizeof(buf), "argv%d", i);
				arg = FUNC1(req, buf, NULL);
				if (arg == NULL)
					continue;
				type = FUNC16(sc, arg);
				if (type != GV_TYPE_DRIVE) {
					FUNC0(req, "'%s' is not a drive",
					    arg);
					continue;
				} else {
					d = FUNC4(sc, arg);
					FUNC9(d, sb, *flags);
				}
			}
		} else
			FUNC8(gp, req, sb);

	/* List volumes. */
	} else if (!FUNC24(cmd, "lv")) {
		if (*argc) {
			for (i = 0; i < *argc; i++) {
				FUNC23(buf, sizeof(buf), "argv%d", i);
				arg = FUNC1(req, buf, NULL);
				if (arg == NULL)
					continue;
				type = FUNC16(sc, arg);
				if (type != GV_TYPE_VOL) {
					FUNC0(req, "'%s' is not a volume",
					    arg);
					continue;
				} else {
					v = FUNC7(sc, arg);
					FUNC15(v, sb, *flags);
				}
			}
		} else
			FUNC14(gp, req, sb);

	/* List plexes. */
	} else if (!FUNC24(cmd, "lp")) {
		if (*argc) {
			for (i = 0; i < *argc; i++) {
				FUNC23(buf, sizeof(buf), "argv%d", i);
				arg = FUNC1(req, buf, NULL);
				if (arg == NULL)
					continue;
				type = FUNC16(sc, arg);
				if (type != GV_TYPE_PLEX) {
					FUNC0(req, "'%s' is not a plex",
					    arg);
					continue;
				} else {
					p = FUNC5(sc, arg);
					FUNC11(p, sb, *flags);
				}
			}
		} else
			FUNC10(gp, req, sb);

	/* List subdisks. */
	} else if (!FUNC24(cmd, "ls")) {
		if (*argc) {
			for (i = 0; i < *argc; i++) {
				FUNC23(buf, sizeof(buf), "argv%d", i);
				arg = FUNC1(req, buf, NULL);
				if (arg == NULL)
					continue;
				type = FUNC16(sc, arg);
				if (type != GV_TYPE_SD) {
					FUNC0(req, "'%s' is not a subdisk",
					    arg);
					continue;
				} else {
					s = FUNC6(sc, arg);
					FUNC13(s, sb, *flags);
				}
			}
		} else
			FUNC12(gp, req, sb);

	} else
		FUNC0(req, "unknown command '%s'", cmd);

	FUNC19(sb);
	FUNC3(req, "config", FUNC17(sb), FUNC20(sb) + 1);
	FUNC18(sb);
}