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
struct physical {int fd; TYPE_1__* dl; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  bundle; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  LogCHAT ; 
 int /*<<< orphan*/  LogWARN ; 
 int MAXARGS ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PARSE_NOHASH ; 
 int PARSE_REDUCE ; 
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  _PATH_DEVNULL ; 
 int /*<<< orphan*/  _PATH_TTY ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char**,int,char const* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (char*,char**) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int*) ; 
 int FUNC22 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC24 (char*) ; 
 char* FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC28(struct physical *physical, char *command, char *out, int olen)
{
  pid_t pid;
  int fids[2];
  char *argv[MAXARGS], *vector[MAXARGS], *startout, *endout;
  int stat, nb, argc, i;

  FUNC19(LogCHAT, "Exec: %s\n", command);
  if ((argc = FUNC1(command, vector, FUNC2(vector),
                       PARSE_REDUCE|PARSE_NOHASH)) <= 0) {
    if (argc < 0)
      FUNC19(LogWARN, "Syntax error in exec command\n");
    *out = '\0';
    return;
  }

  if (FUNC21(fids) < 0) {
    FUNC19(LogCHAT, "Unable to create pipe in ExecStr: %s\n",
	      FUNC25(errno));
    *out = '\0';
    return;
  }
  if ((pid = FUNC14()) == 0) {
    FUNC9(argv, argc, (char const *const *)vector,
                   physical->dl->bundle, 0, FUNC18());
    FUNC8(fids[0]);
    FUNC26();
    if (fids[1] == STDIN_FILENO)
      fids[1] = FUNC10(fids[1]);
    FUNC11(physical->fd, STDIN_FILENO);
    FUNC11(fids[1], STDERR_FILENO);
    FUNC11(STDIN_FILENO, STDOUT_FILENO);
    FUNC8(3);
    if (FUNC20(_PATH_TTY, O_RDWR) != 3)
      FUNC20(_PATH_DEVNULL, O_RDWR);	/* Leave it closed if it fails... */
    for (i = FUNC17(); i > 3; i--)
      FUNC13(i, F_SETFD, 1);
#ifndef NOSUID
    FUNC23(FUNC0());
#endif
    FUNC12(argv[0], argv);
    FUNC15(stderr, "execvp: %s: %s\n", argv[0], FUNC25(errno));
    FUNC7(127);
  } else {
    char *name = FUNC24(vector[0]);

    FUNC8(fids[1]);
    endout = out + olen - 1;
    startout = out;
    while (out < endout) {
      nb = FUNC22(fids[0], out, 1);
      if (nb <= 0)
	break;
      out++;
    }
    *out = '\0';
    FUNC8(fids[0]);
    FUNC8(fids[1]);
    FUNC27(pid, &stat, WNOHANG);
    if (FUNC5(stat)) {
      FUNC19(LogWARN, "%s: signal %d\n", name, FUNC6(stat));
      FUNC16(name);
      *out = '\0';
      return;
    } else if (FUNC4(stat)) {
      switch (FUNC3(stat)) {
        case 0:
          FUNC16(name);
          break;
        case 127:
          FUNC19(LogWARN, "%s: %s\n", name, startout);
          FUNC16(name);
          *out = '\0';
          return;
          break;
        default:
          FUNC19(LogWARN, "%s: exit %d\n", name, FUNC3(stat));
          FUNC16(name);
          *out = '\0';
          return;
          break;
      }
    } else {
      FUNC19(LogWARN, "%s: Unexpected exit result\n", name);
      FUNC16(name);
      *out = '\0';
      return;
    }
  }
}