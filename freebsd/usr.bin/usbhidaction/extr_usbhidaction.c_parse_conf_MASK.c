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
struct hid_item {int kind; int usage; int flags; int usage_minimum; int usage_maximum; } ;
struct hid_data {int dummy; } ;
struct command {int line; int anyvalue; int value; int debounce; int lastseen; int lastused; char* action; void* name; struct hid_item item; struct command* next; } ;
typedef  int /*<<< orphan*/  report_desc_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HIO_CONST ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int SIZE ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct command*) ; 
#define  hid_collection 130 
 int /*<<< orphan*/  FUNC8 (struct hid_data*) ; 
#define  hid_endcollection 129 
 scalar_t__ FUNC9 (struct hid_data*,struct hid_item*) ; 
#define  hid_input 128 
 struct hid_data* FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 char* FUNC11 (int) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ isdemon ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 struct command* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*,char*,char*,...) ; 
 int FUNC18 (char*,char*,...) ; 
 char* FUNC19 (char*,char) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 void* FUNC21 (char*) ; 
 int FUNC22 (char*) ; 
 int /*<<< orphan*/ * FUNC23 (char*,char) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,char const*,int,char*) ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 

struct command *
FUNC26(const char *conf, report_desc_t repd, int reportid, int ignore)
{
	FILE *f;
	char *p;
	int line;
	char buf[SIZE], name[SIZE], value[SIZE], debounce[SIZE], action[SIZE];
	char usbuf[SIZE], coll[SIZE], *tmp;
	struct command *cmd, *cmds;
	struct hid_data *d;
	struct hid_item h;
	int inst, cinst, u, lo, hi, range, t;

	f = FUNC6(conf, "r");
	if (f == NULL)
		FUNC2(1, "%s", conf);

	cmds = NULL;
	for (line = 1; ; line++) {
		if (FUNC5(buf, sizeof buf, f) == NULL)
			break;
		if (buf[0] == '#' || buf[0] == '\n')
			continue;
		p = FUNC19(buf, '\n');
		while (p && FUNC13(FUNC15(f))) {
			if (FUNC5(p, sizeof buf - FUNC22(buf), f) == NULL)
				break;
			p = FUNC19(buf, '\n');
		}
		if (p)
			*p = 0;
		if (FUNC18(buf, "%s %s %s %[^\n]",
			   name, value, debounce, action) != 4) {
			if (isdemon) {
				FUNC24(LOG_WARNING, "config file `%s', line %d"
				       ", syntax error: %s", conf, line, buf);
				FUNC7(cmds);
				return (NULL);
			} else {
				FUNC3(1, "config file `%s', line %d,"
				     ", syntax error: %s", conf, line, buf);
			}
		}
		tmp = FUNC19(name, '#');
		if (tmp != NULL) {
			*tmp = 0;
			inst = FUNC1(tmp + 1);
		} else
			inst = 0;

		cmd = FUNC14(sizeof *cmd);
		if (cmd == NULL)
			FUNC2(1, "malloc failed");
		cmd->next = cmds;
		cmds = cmd;
		cmd->line = line;

		if (FUNC20(value, "*") == 0) {
			cmd->anyvalue = 1;
		} else {
			cmd->anyvalue = 0;
			if (FUNC18(value, "%d", &cmd->value) != 1) {
				if (isdemon) {
					FUNC24(LOG_WARNING,
					       "config file `%s', line %d, "
					       "bad value: %s (should be * or a number)\n",
					       conf, line, value);
					FUNC7(cmds);
					return (NULL);
				} else {
					FUNC3(1, "config file `%s', line %d, "
					     "bad value: %s (should be * or a number)\n",
					     conf, line, value);
				}
			}
		}

		if (FUNC18(debounce, "%d", &cmd->debounce) != 1) {
			if (isdemon) {
				FUNC24(LOG_WARNING,
				       "config file `%s', line %d, "
				       "bad value: %s (should be a number >= 0)\n",
				       conf, line, debounce);
				FUNC7(cmds);
				return (NULL);
			} else {
				FUNC3(1, "config file `%s', line %d, "
				     "bad value: %s (should be a number >= 0)\n",
				     conf, line, debounce);
			}
		}

		coll[0] = 0;
		cinst = 0;
		for (d = FUNC10(repd, 1 << hid_input, reportid);
		     FUNC9(d, &h); ) {
			if (verbose > 2)
				FUNC16("kind=%d usage=%x\n", h.kind, h.usage);
			if (h.flags & HIO_CONST)
				continue;
			switch (h.kind) {
			case hid_input:
				if (h.usage_minimum != 0 ||
				    h.usage_maximum != 0) {
					lo = h.usage_minimum;
					hi = h.usage_maximum;
					range = 1;
				} else {
					lo = h.usage;
					hi = h.usage;
					range = 0;
				}
				for (u = lo; u <= hi; u++) {
					if (coll[0]) {
						FUNC17(usbuf, sizeof usbuf,
						  "%s.%s:%s", coll+1,
						  FUNC12(FUNC0(u)),
						  FUNC11(u));
					} else {
						FUNC17(usbuf, sizeof usbuf,
						  "%s:%s",
						  FUNC12(FUNC0(u)),
						  FUNC11(u));
					}
					if (verbose > 2)
						FUNC16("usage %s\n", usbuf);
					t = FUNC22(usbuf) - FUNC22(name);
					if (t > 0) {
						if (FUNC20(usbuf + t, name))
							continue;
						if (usbuf[t - 1] != '.')
							continue;
					} else if (FUNC20(usbuf, name))
						continue;
					if (inst == cinst++)
						goto foundhid;
				}
				break;
			case hid_collection:
				FUNC17(coll + FUNC22(coll),
				    sizeof coll - FUNC22(coll),  ".%s:%s",
				    FUNC12(FUNC0(h.usage)), 
				    FUNC11(h.usage));
				break;
			case hid_endcollection:
				if (coll[0])
					*FUNC23(coll, '.') = 0;
				break;
			default:
				break;
			}
		}
		if (ignore) {
			if (verbose)
				FUNC25("ignore item '%s'", name);
			continue;
		}
		if (isdemon) {
			FUNC24(LOG_WARNING, "config file `%s', line %d, HID "
			       "item not found: `%s'\n", conf, line, name);
			FUNC7(cmds);
			return (NULL);
		} else {
			FUNC3(1, "config file `%s', line %d, HID item "
			     "not found: `%s'\n", conf, line, name);
		}

	foundhid:
		FUNC8(d);
		cmd->lastseen = -1;
		cmd->lastused = -1;
		cmd->item = h;
		cmd->name = FUNC21(name);
		cmd->action = FUNC21(action);
		if (range) {
			if (cmd->value == 1)
				cmd->value = u - lo;
			else
				cmd->value = -1;
		}

		if (verbose)
			FUNC16("PARSE:%d %s, %d, '%s'\n", cmd->line, name,
			       cmd->value, cmd->action);
	}
	FUNC4(f);
	return (cmds);
}