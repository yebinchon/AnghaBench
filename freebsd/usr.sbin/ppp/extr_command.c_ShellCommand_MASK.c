#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int argc; int argn; char const** argv; TYPE_1__* prompt; int /*<<< orphan*/  bundle; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int fd_out; scalar_t__ owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LogALERT ; 
 int /*<<< orphan*/  LogERROR ; 
 int /*<<< orphan*/  LogWARN ; 
 int MAXARGS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 char* _PATH_BSHELL ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char**) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 () ; 
 char* FUNC11 (char*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(struct cmdargs const *arg, int bg)
{
  const char *shell;
  pid_t shpid, pid;

#ifdef SHELL_ONLY_INTERACTIVELY
  /* we're only allowed to shell when we run ppp interactively */
  if (arg->prompt && arg->prompt->owner) {
    log_Printf(LogWARN, "Can't start a shell from a network connection\n");
    return 1;
  }
#endif

  if (arg->argc == arg->argn) {
    if (!arg->prompt) {
      FUNC13(LogWARN, "Can't start an interactive shell from"
                " a config file\n");
      return 1;
    } else if (arg->prompt->owner) {
      FUNC13(LogWARN, "Can't start an interactive shell from"
                " a socket connection\n");
      return 1;
    } else if (bg) {
      FUNC13(LogWARN, "Can only start an interactive shell in"
		" the foreground mode\n");
      return 1;
    }
  }

  pid = FUNC12();
  if ((shpid = FUNC9()) == 0) {
    int i, fd;

    if ((shell = FUNC11("SHELL")) == NULL)
      shell = _PATH_BSHELL;

    FUNC20();

    if (arg->prompt)
      fd = arg->prompt->fd_out;
    else if ((fd = FUNC14(_PATH_DEVNULL, O_RDWR)) == -1) {
      FUNC13(LogALERT, "Failed to open %s: %s\n",
                _PATH_DEVNULL, FUNC19(errno));
      FUNC7(1);
    }
    FUNC4(fd, STDIN_FILENO);
    FUNC4(fd, STDOUT_FILENO);
    FUNC4(fd, STDERR_FILENO);
    for (i = FUNC10(); i > STDERR_FILENO; i--)
      FUNC8(i, F_SETFD, 1);

#ifndef NOSUID
    FUNC18(FUNC0());
#endif
    if (arg->argc > arg->argn) {
      /* substitute pseudo args */
      char *argv[MAXARGS];
      int argc = arg->argc - arg->argn;

      if (argc >= (int)(sizeof argv / sizeof argv[0])) {
        argc = sizeof argv / sizeof argv[0] - 1;
        FUNC13(LogWARN, "Truncating shell command to %d args\n", argc);
      }
      FUNC2(argv, argc, arg->argv + arg->argn, arg->bundle, 0, pid);
      if (bg) {
	pid_t p;

	p = FUNC12();
	if (FUNC3(1, 1) == -1) {
	  FUNC13(LogERROR, "%ld: daemon: %s\n", (long)p, FUNC19(errno));
	  FUNC7(1);
	}
      } else if (arg->prompt)
        FUNC15("ppp: Pausing until %s finishes\n", arg->argv[arg->argn]);
      FUNC6(argv[0], argv);
    } else {
      if (arg->prompt)
        FUNC15("ppp: Pausing until %s finishes\n", shell);
      FUNC17(arg->prompt);
      FUNC5(shell, shell, (char *)NULL);
    }

    FUNC13(LogWARN, "exec() of %s failed: %s\n",
              arg->argc > arg->argn ? arg->argv[arg->argn] : shell,
              FUNC19(errno));
    FUNC1(255);
  }

  if (shpid == (pid_t)-1)
    FUNC13(LogERROR, "Fork failed: %s\n", FUNC19(errno));
  else {
    int status;
    FUNC21(shpid, &status, 0);
  }

  if (arg->prompt && !arg->prompt->owner)
    FUNC16(arg->prompt);

  return 0;
}