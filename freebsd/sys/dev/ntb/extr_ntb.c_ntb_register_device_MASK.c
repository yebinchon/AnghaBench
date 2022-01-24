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
struct ntb_child {int function; int mwoff; int mwcnt; int spadoff; int spadcnt; int dboff; int dbcnt; int dbmask; struct ntb_child* next; int /*<<< orphan*/ * dev; int /*<<< orphan*/  ctx_lock; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cfg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 struct ntb_child** FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct ntb_child*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct ntb_child* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*,int) ; 
 char* FUNC17 (char**,char*) ; 
 int FUNC18 (char*,int /*<<< orphan*/ *,int) ; 

int
FUNC19(device_t dev)
{
	struct ntb_child **cpp = FUNC7(dev);
	struct ntb_child *nc;
	int i, mw, mwu, mwt, spad, spadu, spadt, db, dbu, dbt;
	char cfg[128] = "";
	char buf[32];
	char *n, *np, *c, *p, *name;

	mwu = 0;
	mwt = FUNC1(dev);
	spadu = 0;
	spadt = FUNC2(dev);
	dbu = 0;
	dbt = FUNC11(FUNC0(dev));

	FUNC9(dev, "%d memory windows, %d scratchpads, "
	    "%d doorbells\n", mwt, spadt, dbt);

	FUNC16(buf, sizeof(buf), "hint.%s.%d.config", FUNC6(dev),
	    FUNC8(dev));
	FUNC3(buf, cfg, sizeof(cfg));
	n = cfg;
	i = 0;
	while ((c = FUNC17(&n, ",")) != NULL) {
		np = c;
		name = FUNC17(&np, ":");
		if (name != NULL && name[0] == 0)
			name = NULL;
		p = FUNC17(&np, ":");
		mw = (p && p[0] != 0) ? FUNC18(p, NULL, 10) : mwt - mwu;
		p = FUNC17(&np, ":");
		spad = (p && p[0] != 0) ? FUNC18(p, NULL, 10) : spadt - spadu;
		db = (np && np[0] != 0) ? FUNC18(np, NULL, 10) : dbt - dbu;

		if (mw > mwt - mwu || spad > spadt - spadu || db > dbt - dbu) {
			FUNC9(dev, "Not enough resources for config\n");
			break;
		}

		nc = FUNC12(sizeof(*nc), M_DEVBUF, M_WAITOK | M_ZERO);
		nc->function = i;
		nc->mwoff = mwu;
		nc->mwcnt = mw;
		nc->spadoff = spadu;
		nc->spadcnt = spad;
		nc->dboff = dbu;
		nc->dbcnt = db;
		nc->dbmask = (db == 0) ? 0 : (0xffffffffffffffff >> (64 - db));
		FUNC15(&nc->ctx_lock, "ntb ctx");
		nc->dev = FUNC5(dev, name, -1);
		if (nc->dev == NULL) {
			FUNC13(dev);
			return (ENOMEM);
		}
		FUNC10(nc->dev, nc);
		*cpp = nc;
		cpp = &nc->next;

		if (bootverbose) {
			FUNC9(dev, "%d \"%s\":", i, name);
			if (mw > 0) {
				FUNC14(" memory windows %d", mwu);
				if (mw > 1)
					FUNC14("-%d", mwu + mw - 1);
			}
			if (spad > 0) {
				FUNC14(" scratchpads %d", spadu);
				if (spad > 1)
					FUNC14("-%d", spadu + spad - 1);
			}
			if (db > 0) {
				FUNC14(" doorbells %d", dbu);
				if (db > 1)
					FUNC14("-%d", dbu + db - 1);
			}
			FUNC14("\n");
		}

		mwu += mw;
		spadu += spad;
		dbu += db;
		i++;
	}

	FUNC4(dev);
	return (0);
}