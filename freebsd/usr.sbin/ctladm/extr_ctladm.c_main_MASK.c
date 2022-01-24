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
typedef  scalar_t__ ctladm_optret ;
typedef  int ctladm_cmdfunction ;
typedef  int ctladm_cmdargs ;

/* Variables and functions */
 scalar_t__ CC_OR_AMBIGUOUS ; 
 scalar_t__ CC_OR_NOT_FOUND ; 
 int CTLADM_ARG_DEVICE ; 
 int CTLADM_ARG_INITIATOR ; 
 int CTLADM_ARG_NEED_TL ; 
 int CTLADM_ARG_NONE ; 
 int CTLADM_ARG_RETRIES ; 
 int CTLADM_ARG_TARG_LUN ; 
#define  CTLADM_CMD_CREATE 158 
#define  CTLADM_CMD_DELAY 157 
#define  CTLADM_CMD_DEVLIST 156 
#define  CTLADM_CMD_DUMPOOA 155 
#define  CTLADM_CMD_DUMPSTRUCTS 154 
#define  CTLADM_CMD_ERR_INJECT 153 
#define  CTLADM_CMD_HELP 152 
#define  CTLADM_CMD_INQUIRY 151 
#define  CTLADM_CMD_INQ_VPD_DEVID 150 
#define  CTLADM_CMD_ISLIST 149 
#define  CTLADM_CMD_ISLOGOUT 148 
#define  CTLADM_CMD_ISTERMINATE 147 
#define  CTLADM_CMD_LUNLIST 146 
#define  CTLADM_CMD_LUNMAP 145 
#define  CTLADM_CMD_MODESENSE 144 
#define  CTLADM_CMD_MODIFY 143 
#define  CTLADM_CMD_PORT 142 
#define  CTLADM_CMD_PORTLIST 141 
#define  CTLADM_CMD_PRES_IN 140 
#define  CTLADM_CMD_PRES_OUT 139 
#define  CTLADM_CMD_READ 138 
#define  CTLADM_CMD_READCAPACITY 137 
#define  CTLADM_CMD_REPORT_LUNS 136 
#define  CTLADM_CMD_REQ_SENSE 135 
#define  CTLADM_CMD_RM 134 
#define  CTLADM_CMD_RTPG 133 
#define  CTLADM_CMD_START 132 
#define  CTLADM_CMD_STOP 131 
#define  CTLADM_CMD_SYNC_CACHE 130 
#define  CTLADM_CMD_TUR 129 
#define  CTLADM_CMD_WRITE 128 
 char* CTL_DEFAULT_DEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (int,int,char**,char*) ; 
 int FUNC1 (int,int,int,char**,char*) ; 
 int FUNC2 (int,int,char**,char*) ; 
 int FUNC3 (int,int,char**) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int,int,char**,char*) ; 
 int FUNC6 (int,int,int,int) ; 
 int FUNC7 (int,int,int) ; 
 int FUNC8 (int,int,char**,char*) ; 
 int FUNC9 (int,int,char**,char*) ; 
 int FUNC10 (int,int,char**,char*) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int,int,char**,char*) ; 
 int FUNC13 (int,int,int,int,int,char**,char*) ; 
 int FUNC14 (int,int,char**,char*) ; 
 int FUNC15 (int,int,int,int,char**,char*,int) ; 
 int FUNC16 (int,int,int,int,char**,char*,int) ; 
 int FUNC17 (int,int,char**,char*) ; 
 int FUNC18 (int,int,char**,char*) ; 
 int FUNC19 (int,int,int,int,int,char**,char*) ; 
 int FUNC20 (int,int,int,int,int,char**,char*,int) ; 
 int FUNC21 (int,int,int,int) ; 
 int FUNC22 (int,int,int) ; 
 int FUNC23 (int,int,int,int) ; 
 int FUNC24 (int,int,char**,char*) ; 
 int FUNC25 (int,int,int,int,int,int,char**,char*) ; 
 int FUNC26 (int,int,int,int,int,char**,char*) ; 
 int FUNC27 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC31 (int,char**,char*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,char*,int*,int*,char const**) ; 
 int /*<<< orphan*/  FUNC33 (char) ; 
 int FUNC34 (char*) ; 
 int FUNC35 (char*) ; 
 int FUNC36 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  option_table ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC37 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC38 (char*) ; 
 char* FUNC39 (int) ; 
 int FUNC40 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (char*) ; 
 int /*<<< orphan*/  FUNC43 (char*,char*) ; 

int
FUNC44(int argc, char **argv)
{
	int c;
	ctladm_cmdfunction command;
	ctladm_cmdargs cmdargs;
	ctladm_optret optreturn;
	char *device;
	const char *mainopt = "C:D:I:";
	const char *subopt = NULL;
	char combinedopt[256];
	int lun;
	int optstart = 2;
	int retval, fd;
	int retries;
	int initid;
	int saved_errno;

	retval = 0;
	cmdargs = CTLADM_ARG_NONE;
	command = CTLADM_CMD_HELP;
	device = NULL;
	fd = -1;
	retries = 0;
	lun = 0;
	initid = 7;

	if (argc < 2) {
		FUNC41(1);
		retval = 1;
		goto bailout;
	}

	/*
	 * Get the base option.
	 */
	optreturn = FUNC32(option_table,argv[1], &command, &cmdargs,&subopt);

	if (optreturn == CC_OR_AMBIGUOUS) {
		FUNC43("ambiguous option %s", argv[1]);
		FUNC41(0);
		FUNC29(1);
	} else if (optreturn == CC_OR_NOT_FOUND) {
		FUNC43("option %s not found", argv[1]);
		FUNC41(0);
		FUNC29(1);
	}

	if (cmdargs & CTLADM_ARG_NEED_TL) {
		if ((argc < 3) || (!FUNC33(argv[2][0]))) {
			FUNC43("option %s requires a lun argument",
			      argv[1]);
			FUNC41(0);
			FUNC29(1);
		}
		lun = FUNC40(argv[2], NULL, 0);

		cmdargs |= CTLADM_ARG_TARG_LUN;
		optstart++;
	}

	/*
	 * Ahh, getopt(3) is a pain.
	 *
	 * This is a gross hack.  There really aren't many other good
	 * options (excuse the pun) for parsing options in a situation like
	 * this.  getopt is kinda braindead, so you end up having to run
	 * through the options twice, and give each invocation of getopt
	 * the option string for the other invocation.
	 *
	 * You would think that you could just have two groups of options.
	 * The first group would get parsed by the first invocation of
	 * getopt, and the second group would get parsed by the second
	 * invocation of getopt.  It doesn't quite work out that way.  When
	 * the first invocation of getopt finishes, it leaves optind pointing
	 * to the argument _after_ the first argument in the second group.
	 * So when the second invocation of getopt comes around, it doesn't
	 * recognize the first argument it gets and then bails out.
	 *
	 * A nice alternative would be to have a flag for getopt that says
	 * "just keep parsing arguments even when you encounter an unknown
	 * argument", but there isn't one.  So there's no real clean way to
	 * easily parse two sets of arguments without having one invocation
	 * of getopt know about the other.
	 *
	 * Without this hack, the first invocation of getopt would work as
	 * long as the generic arguments are first, but the second invocation
	 * (in the subfunction) would fail in one of two ways.  In the case
	 * where you don't set optreset, it would fail because optind may be
	 * pointing to the argument after the one it should be pointing at.
	 * In the case where you do set optreset, and reset optind, it would
	 * fail because getopt would run into the first set of options, which
	 * it doesn't understand.
	 *
	 * All of this would "sort of" work if you could somehow figure out
	 * whether optind had been incremented one option too far.  The
	 * mechanics of that, however, are more daunting than just giving
	 * both invocations all of the expect options for either invocation.
	 *
	 * Needless to say, I wouldn't mind if someone invented a better
	 * (non-GPL!) command line parsing interface than getopt.  I
	 * wouldn't mind if someone added more knobs to getopt to make it
	 * work better.  Who knows, I may talk myself into doing it someday,
	 * if the standards weenies let me.  As it is, it just leads to
	 * hackery like this and causes people to avoid it in some cases.
	 *
	 * KDM, September 8th, 1998
	 */
	if (subopt != NULL)
		FUNC37(combinedopt, "%s%s", mainopt, subopt);
	else
		FUNC37(combinedopt, "%s", mainopt);

	/*
	 * Start getopt processing at argv[2/3], since we've already
	 * accepted argv[1..2] as the command name, and as a possible
	 * device name.
	 */
	optind = optstart;

	/*
	 * Now we run through the argument list looking for generic
	 * options, and ignoring options that possibly belong to
	 * subfunctions.
	 */
	while ((c = FUNC31(argc, argv, combinedopt))!= -1){
		switch (c) {
		case 'C':
			cmdargs |= CTLADM_ARG_RETRIES;
			retries = FUNC40(optarg, NULL, 0);
			break;
		case 'D':
			device = FUNC38(optarg);
			cmdargs |= CTLADM_ARG_DEVICE;
			break;
		case 'I':
			cmdargs |= CTLADM_ARG_INITIATOR;
			initid = FUNC40(optarg, NULL, 0);
			break;
		default:
			break;
		}
	}

	if ((cmdargs & CTLADM_ARG_INITIATOR) == 0)
		initid = 7;

	optind = optstart;
	optreset = 1;

	/*
	 * Default to opening the CTL device for now.
	 */
	if (((cmdargs & CTLADM_ARG_DEVICE) == 0)
	 && (command != CTLADM_CMD_HELP)) {
		device = FUNC38(CTL_DEFAULT_DEV);
		cmdargs |= CTLADM_ARG_DEVICE;
	}

	if ((cmdargs & CTLADM_ARG_DEVICE)
	 && (command != CTLADM_CMD_HELP)) {
		fd = FUNC36(device, O_RDWR);
		if (fd == -1 && errno == ENOENT) {
			saved_errno = errno;
			retval = FUNC34("ctl");
			if (retval != -1)
				fd = FUNC36(device, O_RDWR);
			else
				errno = saved_errno;
		}
		if (fd == -1) {
			FUNC30(stderr, "%s: error opening %s: %s\n",
				argv[0], device, FUNC39(errno));
			retval = 1;
			goto bailout;
		}
#ifdef	WANT_ISCSI
		else {
			if (modfind("cfiscsi") == -1 &&
			    kldload("cfiscsi") == -1)
				warn("couldn't load cfiscsi");
		}
#endif
	} else if ((command != CTLADM_CMD_HELP)
		&& ((cmdargs & CTLADM_ARG_DEVICE) == 0)) {
		FUNC30(stderr, "%s: you must specify a device with the "
			"--device argument for this command\n", argv[0]);
		command = CTLADM_CMD_HELP;
		retval = 1;
	}

	switch (command) {
	case CTLADM_CMD_TUR:
		retval = FUNC27(fd, lun, initid, retries);
		break;
	case CTLADM_CMD_INQUIRY:
		retval = FUNC6(fd, lun, initid, retries);
		break;
	case CTLADM_CMD_REQ_SENSE:
		retval = FUNC23(fd, lun, initid, retries);
		break;
	case CTLADM_CMD_REPORT_LUNS:
		retval = FUNC21(fd, lun, initid, retries);
		break;
	case CTLADM_CMD_CREATE:
		retval = FUNC0(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_RM:
		retval = FUNC24(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_DEVLIST:
		retval = FUNC2(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_READ:
	case CTLADM_CMD_WRITE:
		retval = FUNC20(fd, lun, initid, retries,
					 argc, argv, combinedopt, command);
		break;
	case CTLADM_CMD_PORT:
		retval = FUNC17(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_PORTLIST:
		retval = FUNC18(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_LUNMAP:
		retval = FUNC12(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_READCAPACITY:
		retval = FUNC19(fd, lun, initid, retries,
					    argc, argv, combinedopt);
		break;
	case CTLADM_CMD_MODESENSE:
		retval = FUNC13(fd, lun, initid, retries,
					 argc, argv, combinedopt);
		break;
	case CTLADM_CMD_START:
	case CTLADM_CMD_STOP:
		retval = FUNC25(fd, lun, initid, retries,
					 (command == CTLADM_CMD_START) ? 1 : 0,
					 argc, argv, combinedopt);
		break;
	case CTLADM_CMD_SYNC_CACHE:
		retval = FUNC26(fd, lun, initid, retries,
					 argc, argv, combinedopt);
		break;
	case CTLADM_CMD_LUNLIST:
		retval = FUNC11(fd);
		break;
	case CTLADM_CMD_DELAY:
		retval = FUNC1(fd, lun, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_ERR_INJECT:
		retval = FUNC5(fd, lun, argc, argv,
					   combinedopt);
		break;
	case CTLADM_CMD_DUMPOOA:
		retval = FUNC3(fd, argc, argv);
		break;
	case CTLADM_CMD_DUMPSTRUCTS:
		retval = FUNC4(fd, cmdargs);
		break;
	case CTLADM_CMD_PRES_IN:
		retval = FUNC15(fd, lun, initid,
		                                    argc, argv, combinedopt,
						    retries);
		break;
	case CTLADM_CMD_PRES_OUT:
		retval = FUNC16(fd, lun, initid,
						     argc, argv, combinedopt,
						     retries);
		break;
	case CTLADM_CMD_INQ_VPD_DEVID:
	        retval = FUNC7(fd, lun, initid);
		break;
	case CTLADM_CMD_RTPG:
	        retval = FUNC22(fd, lun, initid);
		break;
	case CTLADM_CMD_MODIFY:
	        retval = FUNC14(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_ISLIST:
	        retval = FUNC8(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_ISLOGOUT:
	        retval = FUNC9(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_ISTERMINATE:
	        retval = FUNC10(fd, argc, argv, combinedopt);
		break;
	case CTLADM_CMD_HELP:
	default:
		FUNC41(retval);
		break;
	}
bailout:

	if (fd != -1)
		FUNC28(fd);

	FUNC29 (retval);
}