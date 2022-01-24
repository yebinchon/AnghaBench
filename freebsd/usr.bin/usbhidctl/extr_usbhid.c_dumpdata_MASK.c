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
typedef  int u_char ;
struct TYPE_2__ {int report_ID; int kind; } ;
struct variable {char* name; TYPE_1__ h; struct variable* next; } ;
typedef  int /*<<< orphan*/  report_desc_t ;
typedef  enum hid_kind { ____Placeholder_hid_kind } hid_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int hid_feature ; 
 int FUNC2 (int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int hid_input ; 
 int hid_output ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  noname ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int,int*,int) ; 
 struct variable* vars ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ zflag ; 

__attribute__((used)) static void
FUNC11(int f, report_desc_t rd, int loop)
{
	struct variable *var;
	int dlen, havedata, i, match, r, rid, use_rid;
	u_char *dbuf;
	enum hid_kind kind;

	kind = zflag ? 3 : 0;
	rid = -1;
	use_rid = !!FUNC3(f);
	do {
		if (kind < 3) {
			if (++rid >= 256) {
				rid = 0;
				kind++;
			}
			if (kind >= 3)
				rid = -1;
			for (var = vars; var; var = var->next) {
				if (rid == var->h.report_ID &&
				    kind == var->h.kind)
					break;
			}
			if (var == NULL)
				continue;
		}
		dlen = FUNC4(rd, kind < 3 ? kind : hid_input, rid);
		if (dlen <= 0)
			continue;
		dbuf = FUNC5(dlen);
		FUNC6(dbuf, 0, dlen);
		if (kind < 3) {
			dbuf[0] = rid;
			r = FUNC2(f, kind, dbuf, dlen);
			if (r < 0)
				FUNC10("hid_get_report(rid %d)", rid);
			havedata = !r && (rid == 0 || dbuf[0] == rid);
			if (rid != 0)
				dbuf[0] = rid;
		} else {
			r = FUNC9(f, dbuf, dlen);
			if (r < 1)
				FUNC0(1, "read error");
			havedata = 1;
		}
		if (verbose) {
			FUNC8("Got %s report %d (%d bytes):",
			    kind == hid_output ? "output" :
			    kind == hid_feature ? "feature" : "input",
			    use_rid ? dbuf[0] : 0, dlen);
			if (havedata) {
				for (i = 0; i < dlen; i++)
					FUNC8(" %02x", dbuf[i]);
			}
			FUNC8("\n");
		}
		match = 0;
		for (var = vars; var; var = var->next) {
			if ((kind < 3 ? kind : hid_input) != var->h.kind)
				continue;
			if (var->h.report_ID != 0 &&
			    dbuf[0] != var->h.report_ID)
				continue;
			match = 1;
			if (!noname)
				FUNC8("%s=", var->name);
			if (havedata)
				FUNC7(dbuf, &var->h);
			FUNC8("\n");
		}
		if (match)
			FUNC8("\n");
		FUNC1(dbuf);
	} while (loop || kind < 3);
}