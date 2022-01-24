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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {char report_ID; int flags; int report_count; int /*<<< orphan*/  pos; scalar_t__ report_size; } ;
struct command {int value; scalar_t__ anyvalue; int debounce; int lastseen; int lastused; TYPE_1__ item; struct command* next; } ;
typedef  int /*<<< orphan*/ * report_desc_t ;
typedef  int /*<<< orphan*/  devnamebuf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int HIO_VARIABLE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SIGHUP ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int FUNC0 (int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct command* commands ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct command*,int,char const*,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct command*) ; 
 int FUNC9 (int,char**,char*) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  hid_input ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int isdemon ; 
 scalar_t__ FUNC15 (char const) ; 
 int FUNC16 (char const*,int,...) ; 
 void* optarg ; 
 scalar_t__ optind ; 
 void* FUNC17 (char const*,int /*<<< orphan*/ *,int,int) ; 
 void* pidfile ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int FUNC19 (int,char*,size_t) ; 
 scalar_t__ reparse ; 
 int /*<<< orphan*/  sighup ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,...) ; 
 size_t FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int verbose ; 
 scalar_t__ FUNC24 (int,char*,size_t) ; 

int
FUNC25(int argc, char **argv)
{
	const char *conf = NULL;
	const char *dev = NULL;
	const char *table = NULL;
	int fd, fp, ch, n, val, i;
	size_t sz, sz1;
	int demon, ignore, dieearly;
	report_desc_t repd;
	char buf[100];
	char devnamebuf[PATH_MAX];
	struct command *cmd;
	int reportid = -1;

	demon = 1;
	ignore = 0;
	dieearly = 0;
	while ((ch = FUNC9(argc, argv, "c:def:ip:r:t:v")) != -1) {
		switch(ch) {
		case 'c':
			conf = optarg;
			break;
		case 'd':
			demon ^= 1;
			break;
		case 'e':
			dieearly = 1;
			break;
		case 'i':
			ignore++;
			break;
		case 'f':
			dev = optarg;
			break;
		case 'p':
			pidfile = optarg;
			break;
		case 'r':
			reportid = FUNC1(optarg);
			break;
		case 't':
			table = optarg;
			break;
		case 'v':
			demon = 0;
			verbose++;
			break;
		case '?':
		default:
			FUNC23();
		}
	}
	argc -= optind;
	argv += optind;

	if (conf == NULL || dev == NULL)
		FUNC23();

	FUNC13(table);

	if (dev[0] != '/') {
		FUNC21(devnamebuf, sizeof(devnamebuf), "/dev/%s%s",
			 FUNC15(dev[0]) ? "uhid" : "", dev);
		dev = devnamebuf;
	}

	fd = FUNC16(dev, O_RDWR);
	if (fd < 0)
		FUNC5(1, "%s", dev);
	repd = FUNC12(fd);
	if (repd == NULL)
		FUNC5(1, "hid_get_report_desc() failed");

	commands = FUNC17(conf, repd, reportid, ignore);

	sz = (size_t)FUNC14(repd, hid_input, -1);

	if (verbose)
		FUNC18("report size %zu\n", sz);
	if (sz > sizeof buf)
		FUNC6(1, "report too large");

	(void)FUNC20(SIGHUP, sighup);

	if (demon) {
		fp = FUNC16(pidfile, O_WRONLY|O_CREAT, S_IRUSR|S_IRGRP|S_IROTH);
		if (fp < 0)
			FUNC5(1, "%s", pidfile);
		if (FUNC3(0, 0) < 0)
			FUNC5(1, "daemon()");
		FUNC21(buf, sizeof(buf), "%ld\n", (long)FUNC10());
		sz1 = FUNC22(buf);
		if (FUNC24(fp, buf, sz1) < 0)
			FUNC5(1, "%s", pidfile);
		FUNC2(fp);
		isdemon = 1;
	}

	for(;;) {
		n = FUNC19(fd, buf, sz);
		if (verbose > 2) {
			FUNC18("read %d bytes:", n);
			for (i = 0; i < n; i++)
				FUNC18(" %02x", buf[i]);
			FUNC18("\n");
		}
		if (n < 0) {
			if (verbose)
				FUNC5(1, "read");
			else
				FUNC7(1);
		}
#if 0
		if (n != sz) {
			err(2, "read size");
		}
#endif
		for (cmd = commands; cmd; cmd = cmd->next) {
			if (cmd->item.report_ID != 0 &&
			    buf[0] != cmd->item.report_ID)
				continue;
			if (cmd->item.flags & HIO_VARIABLE)
				val = FUNC11(buf, &cmd->item);
			else {
				uint32_t pos = cmd->item.pos;
				for (i = 0; i < cmd->item.report_count; i++) {
					val = FUNC11(buf, &cmd->item);
					if (val == cmd->value)
						break;
					cmd->item.pos += cmd->item.report_size;
				}
				cmd->item.pos = pos;
				val = (i < cmd->item.report_count) ?
				    cmd->value : -1;
			}
			if (cmd->value != val && cmd->anyvalue == 0)
				goto next;
			if ((cmd->debounce == 0) ||
			    ((cmd->debounce == 1) && ((cmd->lastseen == -1) ||
					       (cmd->lastseen != val)))) {
				FUNC4(cmd, val, dev, argc, argv);
				goto next;
			}
			if ((cmd->debounce > 1) &&
			    ((cmd->lastused == -1) ||
			     (FUNC0(cmd->lastused - val) >= cmd->debounce))) {
				FUNC4(cmd, val, dev, argc, argv);
				cmd->lastused = val;
				goto next;
			}
next:
			cmd->lastseen = val;
		}

		if (dieearly)
			FUNC7(0);

		if (reparse) {
			struct command *cmds =
			    FUNC17(conf, repd, reportid, ignore);
			if (cmds) {
				FUNC8(commands);
				commands = cmds;
			}
			reparse = 0;
		}
	}

	FUNC7(0);
}