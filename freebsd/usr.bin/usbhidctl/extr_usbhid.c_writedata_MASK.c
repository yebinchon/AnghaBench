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
struct variable {int /*<<< orphan*/  val; TYPE_1__ h; struct variable* next; } ;
typedef  int /*<<< orphan*/  report_desc_t ;
typedef  enum hid_kind { ____Placeholder_hid_kind } hid_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int hid_feature ; 
 scalar_t__ FUNC1 (int,int,int*,int) ; 
 int hid_input ; 
 int hid_output ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int*,int) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct variable* vars ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  zflag ; 

__attribute__((used)) static void
FUNC9(int f, report_desc_t rd)
{
	struct variable *var;
	int dlen, i, r, rid;
	u_char *dbuf;
	enum hid_kind kind;

	kind = 0;
	rid = 0;
	for (kind = 0; kind < 3; kind ++) {
	    for (rid = 0; rid < 256; rid ++) {
		for (var = vars; var; var = var->next) {
			if (rid == var->h.report_ID && kind == var->h.kind)
				break;
		}
		if (var == NULL)
			continue;
		dlen = FUNC2(rd, kind, rid);
		if (dlen <= 0)
			continue;
		dbuf = FUNC5(dlen);
		FUNC6(dbuf, 0, dlen);
		dbuf[0] = rid;
		if (!zflag && FUNC1(f, kind, dbuf, dlen) == 0) {
			if (verbose) {
				FUNC7("Got %s report %d (%d bytes):",
				    kind == hid_input ? "input" :
				    kind == hid_output ? "output" : "feature",
				    rid, dlen);
				for (i = 0; i < dlen; i++)
					FUNC7(" %02x", dbuf[i]);
				FUNC7("\n");
			}
		} else if (!zflag) {
			FUNC8("hid_get_report(rid %d)", rid);
			if (verbose) {
				FUNC7("Can't get %s report %d (%d bytes). "
				    "Will be initialized with zeros.\n",
				    kind == hid_input ? "input" :
				    kind == hid_output ? "output" : "feature",
				    rid, dlen);
			}
		}
		for (var = vars; var; var = var->next) {
			if (rid != var->h.report_ID || kind != var->h.kind)
				continue;
			FUNC3(dbuf, &var->h, var->val);
		}
		if (verbose) {
			FUNC7("Setting %s report %d (%d bytes):",
			    kind == hid_output ? "output" :
			    kind == hid_feature ? "feature" : "input",
			    rid, dlen);
			for (i = 0; i < dlen; i++)
				FUNC7(" %02x", dbuf[i]);
			FUNC7("\n");
		}
		r = FUNC4(f, kind, dbuf, dlen);
		if (r != 0)
			FUNC8("hid_set_report(rid %d)", rid);
		FUNC0(dbuf);
	    }
	}
}