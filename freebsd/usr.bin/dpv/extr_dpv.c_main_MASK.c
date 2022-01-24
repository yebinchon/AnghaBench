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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
struct dpv_file_node {char* name; int length; char* path; struct dpv_file_node* next; } ;
struct dpv_config {char* backtitle; scalar_t__ display_type; char* status_solo; char* status_many; int label_size; char* output; int display_limit; int pbar_size; char* title; int status_updates_per_second; void* keep_tite; int /*<<< orphan*/  action; void* output_type; int /*<<< orphan*/  options; int /*<<< orphan*/ * pprompt; void* debug; int /*<<< orphan*/ * aprompt; } ;

/* Variables and functions */
 void* BYTE_STATUS_SOLO ; 
 size_t DPV_APROMPT_MAX ; 
 scalar_t__ DPV_DISPLAY_DIALOG ; 
 scalar_t__ DPV_DISPLAY_LIBDIALOG ; 
 scalar_t__ DPV_DISPLAY_XDIALOG ; 
 int /*<<< orphan*/  DPV_NO_OVERRUN ; 
 void* DPV_OUTPUT_FILE ; 
 void* DPV_OUTPUT_SHELL ; 
 size_t DPV_PPROMPT_MAX ; 
 int /*<<< orphan*/  DPV_TEST_MODE ; 
 int /*<<< orphan*/  DPV_WIDE_MODE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 void* LINE_STATUS_SOLO ; 
 int /*<<< orphan*/  SIGINT ; 
 void* TRUE ; 
 void* debug ; 
 scalar_t__ FUNC0 (struct dpv_config*,struct dpv_file_node*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dpv_file_node* file_list ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int,char**,char*) ; 
 void* line_mode ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,char,size_t) ; 
 void* multiple ; 
 scalar_t__ nfiles ; 
 void* no_overrun ; 
 int /*<<< orphan*/  operate_on_bytes ; 
 int /*<<< orphan*/  operate_on_lines ; 
 char* optarg ; 
 scalar_t__ optind ; 
 void* output_type ; 
 char* pgm ; 
 int /*<<< orphan*/  sig_int ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t,char*,char*) ; 
 int FUNC11 (char*,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ FUNC15 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int
FUNC18(int argc, char *argv[])
{
	char dummy;
	int ch;
	int n = 0;
	size_t config_size = sizeof(struct dpv_config);
	size_t file_node_size = sizeof(struct dpv_file_node);
	struct dpv_config *config;
	struct dpv_file_node *curfile;
	struct sigaction act;

	pgm = argv[0]; /* store a copy of invocation name */

	/* Allocate config structure */
	if ((config = FUNC7(config_size)) == NULL)
		FUNC3(EXIT_FAILURE, "Out of memory?!");
	FUNC8((void *)(config), '\0', config_size);

	/*
	 * Process command-line options
	 */
	while ((ch = FUNC6(argc, argv,
	    "a:b:dDhi:I:klL:mn:No:p:P:t:TU:wx:X")) != -1) {
		switch(ch) {
		case 'a': /* additional message text to append */
			if (config->aprompt == NULL) {
				config->aprompt = FUNC7(DPV_APROMPT_MAX);
				if (config->aprompt == NULL)
					FUNC3(EXIT_FAILURE, "Out of memory?!");
			}
			FUNC10(config->aprompt, DPV_APROMPT_MAX, "%s",
			    optarg);
			break;
		case 'b': /* [X]dialog(1) backtitle */
			if (config->backtitle != NULL)
				FUNC5((char *)config->backtitle);
			config->backtitle = FUNC7(FUNC14(optarg) + 1);
			if (config->backtitle == NULL)
				FUNC3(EXIT_FAILURE, "Out of memory?!");
			*(config->backtitle) = '\0';
			FUNC12(config->backtitle, optarg);
			break;
		case 'd': /* debugging */
			debug = TRUE;
			config->debug = debug;
			break;
		case 'D': /* use dialog(1) instead of libdialog */
			config->display_type = DPV_DISPLAY_DIALOG;
			break;
		case 'h': /* help/usage */
			FUNC16();
			break; /* NOTREACHED */
		case 'i': /* status line format string for single-file */
			config->status_solo = optarg;
			break;
		case 'I': /* status line format string for many-files */
			config->status_many = optarg;
			break;
		case 'k': /* keep tite */
			config->keep_tite = TRUE;
			break;
		case 'l': /* Line mode */
			line_mode = TRUE;
			break;
		case 'L': /* custom label size */
			config->label_size =
			    (int)FUNC15(optarg, (char **)NULL, 10);
			if (config->label_size == 0 && errno == EINVAL)
				FUNC3(EXIT_FAILURE,
				    "`-L' argument must be numeric");
			else if (config->label_size < -1)
				config->label_size = -1;
			break;
		case 'm': /* enable multiple file arguments */
			multiple = TRUE;
			break;
		case 'o': /* `-o path' for sending data-read to file */
			output_type = DPV_OUTPUT_FILE;
			config->output_type = DPV_OUTPUT_FILE;
			config->output = optarg;
			break;
		case 'n': /* custom number of files per `page' */
			config->display_limit =
				(int)FUNC15(optarg, (char **)NULL, 10);
			if (config->display_limit == 0 && errno == EINVAL)
				FUNC3(EXIT_FAILURE,
				    "`-n' argument must be numeric");
			else if (config->display_limit < 0)
				config->display_limit = -1;
			break;
		case 'N': /* No overrun (truncate reads of known-length) */
			no_overrun = TRUE;
			config->options |= DPV_NO_OVERRUN;
			break;
		case 'p': /* additional message text to use as prefix */
			if (config->pprompt == NULL) {
				config->pprompt = FUNC7(DPV_PPROMPT_MAX + 2);
				if (config->pprompt == NULL)
					FUNC3(EXIT_FAILURE, "Out of memory?!");
				/* +2 is for implicit "\n" appended later */
			}
			FUNC10(config->pprompt, DPV_PPROMPT_MAX, "%s",
			    optarg);
			break;
		case 'P': /* custom size for mini-progressbar */
			config->pbar_size =
			    (int)FUNC15(optarg, (char **)NULL, 10);
			if (config->pbar_size == 0 && errno == EINVAL)
				FUNC3(EXIT_FAILURE,
				    "`-P' argument must be numeric");
			else if (config->pbar_size < -1)
				config->pbar_size = -1;
			break;
		case 't': /* [X]dialog(1) title */
			if (config->title != NULL)
				FUNC5(config->title);
			config->title = FUNC7(FUNC14(optarg) + 1);
			if (config->title == NULL)
				FUNC3(EXIT_FAILURE, "Out of memory?!");
			*(config->title) = '\0';
			FUNC12(config->title, optarg);
			break;
		case 'T': /* test mode (don't read data, fake it) */
			config->options |= DPV_TEST_MODE;
			break;
		case 'U': /* updates per second */
			config->status_updates_per_second =
			    (int)FUNC15(optarg, (char **)NULL, 10);
			if (config->status_updates_per_second == 0 &&
			    errno == EINVAL)
				FUNC3(EXIT_FAILURE,
				    "`-U' argument must be numeric");
			break;
		case 'w': /* `-p' and `-a' widths bump [X]dialog(1) width */
			config->options |= DPV_WIDE_MODE;
			break;
		case 'x': /* `-x cmd' for sending data-read to sh(1) code */
			output_type = DPV_OUTPUT_SHELL;
			config->output_type = DPV_OUTPUT_SHELL;
			config->output = optarg;
			break;
		case 'X': /* X11 support through x11/xdialog */
			config->display_type = DPV_DISPLAY_XDIALOG;
			break;
		case '?': /* unknown argument (based on optstring) */
			/* FALLTHROUGH */
		default: /* unhandled argument (based on switch) */
			FUNC16();
			/* NOTREACHED */
		}
	}
	argc -= optind;
	argv += optind;

	/* Process remaining arguments as list of names to display */
	for (curfile = file_list; n < argc; n++) {
		nfiles++;

		/* Allocate a new struct for the file argument */
		if (curfile == NULL) {
			if ((curfile = FUNC7(file_node_size)) == NULL)
				FUNC3(EXIT_FAILURE, "Out of memory?!");
			FUNC8((void *)(curfile), '\0', file_node_size);
			file_list = curfile;
		} else {
			if ((curfile->next = FUNC7(file_node_size)) == NULL)
				FUNC3(EXIT_FAILURE, "Out of memory?!");
			FUNC8((void *)(curfile->next), '\0', file_node_size);
			curfile = curfile->next;
		}
		curfile->name = argv[n];

		/* Read possible `lines:' prefix from label syntax */
		if (FUNC11(curfile->name, "%lli:%c", &(curfile->length),
		    &dummy) == 2)
			curfile->name = FUNC13(curfile->name, ':') + 1;
		else
			curfile->length = -1;

		/* Read path argument if enabled */
		if (multiple) {
			if (++n >= argc)
				FUNC3(EXIT_FAILURE, "Missing path argument "
				    "for label number %i", nfiles);
			curfile->path = argv[n];
		} else
			break;
	}

	/* Display usage and exit if not given at least one name */
	if (nfiles == 0) {
		FUNC17("no labels provided");
		FUNC16();
		/* NOTREACHED */
	}

	/*
	 * Set cleanup routine for Ctrl-C action
	 */
	if (config->display_type == DPV_DISPLAY_LIBDIALOG) {
		act.sa_handler = sig_int;
		FUNC9(SIGINT, &act, 0);
	}

	/* Set status formats and action */
	if (line_mode) {
		config->status_solo = LINE_STATUS_SOLO;
		config->status_many = LINE_STATUS_SOLO;
		config->action = operate_on_lines;
	} else {
		config->status_solo = BYTE_STATUS_SOLO;
		config->status_many = BYTE_STATUS_SOLO;
		config->action = operate_on_bytes;
	}

	/*
	 * Hand off to dpv(3)...
	 */
	if (FUNC0(config, file_list) != 0 && debug)
		FUNC17("dpv(3) returned error!?");

	if (!config->keep_tite)
		FUNC2();
	FUNC1();

	FUNC4(EXIT_SUCCESS);
}