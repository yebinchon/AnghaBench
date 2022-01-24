#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct switches {scalar_t__ mode; int /*<<< orphan*/  fg; int /*<<< orphan*/  quiet; scalar_t__ nat; int /*<<< orphan*/  unit; } ;
struct stat {int st_mode; } ;
struct prompt {struct bundle* bundle; } ;
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {int /*<<< orphan*/  peer_range; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct TYPE_9__ {TYPE_3__ ipcp; } ;
struct bundle {TYPE_1__ notify; TYPE_5__* iface; TYPE_4__ ncp; scalar_t__ NatEnabled; } ;
typedef  int pid_t ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BGPid ; 
 int /*<<< orphan*/  BringDownServer ; 
 char* CONFFILE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct prompt*,scalar_t__) ; 
 int /*<<< orphan*/  CloseConnection ; 
 int /*<<< orphan*/  CloseSession ; 
 int /*<<< orphan*/  FUNC2 (struct bundle*) ; 
#define  EX_NORMAL 130 
#define  EX_RECONNECT 129 
#define  EX_REDIAL 128 
 int EX_SOCK ; 
 int EX_START ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  KillChild ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  OPT_IFACEALIAS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ PHYS_AUTO ; 
 scalar_t__ PHYS_BACKGROUND ; 
 scalar_t__ PHYS_DIRECT ; 
 scalar_t__ PHYS_INTERACTIVE ; 
 char* PPP_CONFDIR ; 
 int /*<<< orphan*/  PROMPT_STD ; 
 int FUNC6 (int,char**,struct switches*) ; 
 int /*<<< orphan*/  RestartServer ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int S_IWOTH ; 
 struct bundle* SignalBundle ; 
 struct prompt* SignalPrompt ; 
 int /*<<< orphan*/  TUN_PREFIX ; 
 int /*<<< orphan*/  TerminalStop ; 
 char* _PATH_DEVNULL ; 
 char* _PATH_TTY ; 
 int /*<<< orphan*/  FUNC7 (struct bundle*) ; 
 struct bundle* FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bundle*) ; 
 int /*<<< orphan*/  FUNC10 (struct bundle*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC13 (int) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  la ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct bundle*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 struct prompt* FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct prompt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct prompt*,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC28 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC29 (struct prompt*) ; 
 int FUNC30 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC35 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC36 (int /*<<< orphan*/ ) ; 
 int FUNC37 (char*) ; 
 char* FUNC38 (char*,char) ; 
 scalar_t__ FUNC39 (struct bundle*,char*,char*,struct prompt*,int /*<<< orphan*/ *) ; 

int
FUNC40(int argc, char **argv)
{
  char *name;
  const char *lastlabel;
  int arg, holdfd[3], label;
  unsigned f;
  struct bundle *bundle;
  struct prompt *prompt;
  struct switches sw;

  FUNC23();

  /*
   * We open 3 descriptors to ensure that STDIN_FILENO, STDOUT_FILENO and
   * STDERR_FILENO are always open.  These are closed before DoLoop(),
   * but *after* we've avoided the possibility of erroneously closing
   * an important descriptor with close(STD{IN,OUT,ERR}_FILENO).
   */
  if ((holdfd[0] = FUNC20(_PATH_DEVNULL, O_RDWR)) == -1) {
    FUNC15(stderr, "Cannot open %s !\n", _PATH_DEVNULL);
    return 2;
  }
  for (f = 1; f < sizeof holdfd / sizeof *holdfd; f++)
    holdfd[f] = FUNC12(holdfd[0]);

  name = FUNC38(argv[0], '/');
  FUNC16(name ? name + 1 : argv[0]);

#ifndef NONAT
  la = FUNC5(NULL);
#endif
  label = FUNC6(argc, argv, &sw);

  /*
   * A FreeBSD & OpenBSD hack to dodge a bug in the tty driver that drops
   * output occasionally.... I must find the real reason some time.  To
   * display the dodgy behaviour, comment out this bit, make yourself a large
   * routing table and then run ppp in interactive mode.  The `show route'
   * command will drop chunks of data !!!
   */
  if (sw.mode == PHYS_INTERACTIVE) {
    FUNC11(STDIN_FILENO);
    if (FUNC20(_PATH_TTY, O_RDONLY) != STDIN_FILENO) {
      FUNC15(stderr, "Cannot open %s for input !\n", _PATH_TTY);
      return 2;
    }
  }

  /* Allow output for the moment (except in direct mode) */
  if (sw.mode == PHYS_DIRECT)
    prompt = NULL;
  else
    SignalPrompt = prompt = FUNC24(NULL, NULL, PROMPT_STD);

  FUNC3();
  if (FUNC4() != 0) {
    char conf[200], *ptr;

    FUNC34(conf, sizeof conf, "%s/%s", PPP_CONFDIR, CONFFILE);
    do {
      struct stat sb;

      if (FUNC35(conf, &sb) == 0 && sb.st_mode & S_IWOTH) {
        FUNC17(LogALERT, "ppp: Access violation: Please protect %s\n",
                   conf);
        return -1;
      }
      ptr = conf + FUNC37(conf)-2;
      while (ptr > conf && *ptr != '/')
        *ptr-- = '\0';
    } while (ptr >= conf);
  }

  if (label < argc)
    for (arg = label; arg < argc; arg++)
      FUNC1(argv[arg], prompt, sw.mode);
  else
    FUNC1("default", prompt, sw.mode);

  if (!sw.quiet)
    FUNC26(prompt, "Working in %s mode\n", FUNC18(sw.mode));

  if ((bundle = FUNC8(TUN_PREFIX, sw.mode, sw.unit)) == NULL)
    return EX_START;

  /* NOTE:  We may now have changed argv[1] via a ``set proctitle'' */

  SignalBundle = bundle;
  bundle->NatEnabled = sw.nat;
  if (sw.nat)
    FUNC21(bundle, OPT_IFACEALIAS);

  if (FUNC39(bundle, "default", CONFFILE, prompt, NULL) < 0)
    FUNC26(prompt, "Warning: No default entry found in config file.\n");

  FUNC32(SIGHUP, CloseSession);
  FUNC32(SIGTERM, CloseSession);
  FUNC32(SIGINT, CloseConnection);
  FUNC32(SIGQUIT, CloseSession);
  FUNC32(SIGALRM, SIG_IGN);
  FUNC33(SIGPIPE, SIG_IGN);

  if (sw.mode == PHYS_INTERACTIVE)
    FUNC32(SIGTSTP, TerminalStop);

  FUNC32(SIGUSR1, RestartServer);
  FUNC32(SIGUSR2, BringDownServer);

  lastlabel = argv[argc - 1];
  for (arg = label; arg < argc; arg++) {
    /* In case we use LABEL or ``set enddisc label'' */
    FUNC10(bundle, lastlabel);
    FUNC39(bundle, argv[arg], CONFFILE, prompt, NULL);
  }

  if (label < argc)
    /* In case the last label did a ``load'' */
    FUNC10(bundle, lastlabel);

  if (sw.mode == PHYS_AUTO &&
      FUNC19(&bundle->ncp.ipcp.cfg.peer_range) == AF_UNSPEC) {
    FUNC26(prompt, "You must ``set ifaddr'' with a peer address "
                  "in auto mode.\n");
    FUNC0(EX_START);
  }

  if (prompt) {
    prompt->bundle = bundle;	/* couldn't do it earlier */
    if (!sw.quiet)
      FUNC26(prompt, "Using interface: %s\n", bundle->iface->name);
  } 

  if (sw.mode != PHYS_INTERACTIVE) {
    if (sw.mode != PHYS_DIRECT) {
      if (!sw.fg) {
        int bgpipe[2];
        pid_t bgpid;

        if (sw.mode == PHYS_BACKGROUND && FUNC22(bgpipe)) {
          FUNC17(LogERROR, "pipe: %s\n", FUNC36(errno));
	  FUNC0(EX_SOCK);
        }

        bgpid = FUNC14();
        if (bgpid == -1) {
	  FUNC17(LogERROR, "fork: %s\n", FUNC36(errno));
	  FUNC0(EX_SOCK);
        }

        if (bgpid) {
	  char c = EX_NORMAL;
          int ret;

	  if (sw.mode == PHYS_BACKGROUND) {
	    FUNC11(bgpipe[1]);
	    BGPid = bgpid;
            /* If we get a signal, kill the child */
            FUNC33(SIGHUP, KillChild);
            FUNC33(SIGTERM, KillChild);
            FUNC33(SIGINT, KillChild);
            FUNC33(SIGQUIT, KillChild);

	    /* Wait for our child to close its pipe before we exit */
            while ((ret = FUNC30(bgpipe[0], &c, 1)) == 1) {
              switch (c) {
                case EX_NORMAL:
                  if (!sw.quiet) {
	            FUNC26(prompt, "PPP enabled\n");
	            FUNC17(LogPHASE, "Parent: PPP enabled\n");
                  }
	          break;
                case EX_REDIAL:
                  if (!sw.quiet)
	            FUNC26(prompt, "Attempting redial\n");
                  continue;
                case EX_RECONNECT:
                  if (!sw.quiet)
	            FUNC26(prompt, "Attempting reconnect\n");
                  continue;
	        default:
	          FUNC26(prompt, "Child failed (%s)\n",
                                FUNC13((int)c));
	          FUNC17(LogPHASE, "Parent: Child failed (%s)\n",
		             FUNC13((int) c));
	      }
	      break;
            }
            if (ret != 1) {
	      FUNC26(prompt, "Child exit, no status.\n");
	      FUNC17(LogPHASE, "Parent: Child exit, no status.\n");
	    }
	    FUNC11(bgpipe[0]);
	  }
	  return c;
        } else if (sw.mode == PHYS_BACKGROUND) {
	  FUNC11(bgpipe[0]);
          bundle->notify.fd = bgpipe[1];
        }

        FUNC7(bundle);
        FUNC9(bundle);	/* we have a new pid */
      }

      /* -auto, -dedicated, -ddial, -foreground & -background */
      FUNC25(prompt, 0);
      FUNC11(STDOUT_FILENO);
      FUNC11(STDERR_FILENO);
      FUNC11(STDIN_FILENO);
      if (!sw.fg)
        FUNC31();
    } else {
      /*
       * -direct - STDIN_FILENO gets used by physical_Open.  STDOUT_FILENO
       * *may* get used in exec/pipe mode.
       */
      FUNC29(NULL);
      FUNC11(STDERR_FILENO);
    }
  } else {
    /* -interactive */
    FUNC11(STDERR_FILENO);
    FUNC29(prompt);
    FUNC28(prompt);
    FUNC27(prompt);
  }

  /* We can get rid of these now */
  for (f = 0; f < sizeof holdfd / sizeof *holdfd; f++)
    FUNC11(holdfd[f]);

  FUNC17(LogPHASE, "PPP Started (%s mode).\n", FUNC18(sw.mode));
  FUNC2(bundle);
  FUNC0(EX_NORMAL);

  return EX_NORMAL;
}