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
struct prompt {int dummy; } ;
struct datalink {int dummy; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  CTRL_INCLUDE 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogCOMMAND ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  LogWARN ; 
 int MAXARGS ; 
 int PATH_MAX ; 
 char* PPP_CONFDIR ; 
 int SYSTEM_EXEC ; 
 int SYSTEM_EXISTS ; 
 int FUNC3 (char*,int,char**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bundle*,int,char const* const*,struct prompt*,char const*,struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct prompt* log_PromptContext ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(struct bundle *bundle, const char *name, const char *file,
           struct prompt *prompt, struct datalink *cx, int how)
{
  FILE *fp;
  char *cp;
  int n, len;
  char line[LINE_LEN];
  char filename[PATH_MAX];
  int linenum;
  int argc;
  char *argv[MAXARGS];
  int allowcmd;
  int indent;
  char arg[LINE_LEN];
  struct prompt *op;

  if (*file == '/')
    FUNC8(filename, sizeof filename, "%s", file);
  else
    FUNC8(filename, sizeof filename, "%s/%s", PPP_CONFDIR, file);
  fp = FUNC2(filename, "r");
  if (fp == NULL) {
    FUNC7(LogDEBUG, "ReadSystem: Can't open %s.\n", filename);
    return -2;
  }
  FUNC7(LogDEBUG, "ReadSystem: Checking %s (%s).\n", name, filename);

  linenum = 0;
  while ((n = FUNC13(line, sizeof line, fp))) {
    linenum += n;
    if (FUNC6(*line))
      continue;

    cp = FUNC11(line);

    switch (*cp) {
    case '\0':			/* empty/comment */
      break;

    case '!':
      switch (FUNC0(cp+1, arg)) {
      case CTRL_INCLUDE:
        FUNC7(LogCOMMAND, "%s: Including \"%s\"\n", filename, arg);
        n = FUNC14(bundle, name, arg, prompt, cx, how);
        FUNC7(LogCOMMAND, "%s: Done include of \"%s\"\n", filename, arg);
        if (!n) {
          FUNC5(fp);
          return 0;	/* got it */
        }
        break;
      default:
        FUNC7(LogWARN, "%s: %s: Invalid command\n", filename, cp);
        break;
      }
      break;

    default:
      if ((cp = FUNC1(cp, filename, linenum)) == NULL)
        continue;

      if (FUNC10(cp, name) == 0) {
        /* We're in business */
        if (how == SYSTEM_EXISTS) {
          FUNC5(fp);
	  return 0;
	}
	while ((n = FUNC13(line, sizeof line, fp))) {
          linenum += n;
          indent = FUNC6(*line);
          cp = FUNC11(line);

          if (*cp == '\0')			/* empty / comment */
            continue;

          if (!indent) {			/* start of next section */
            if (*cp != '!' && how == SYSTEM_EXEC)
              cp = FUNC1(cp, filename, linenum);
            break;
          }

          len = FUNC12(cp);
          if ((argc = FUNC3(cp, len, argv, cp - line)) < 0)
            FUNC7(LogWARN, "%s: %d: Syntax error\n", filename, linenum);
          else {
            allowcmd = argc > 0 && !FUNC9(argv[0], "allow");
            if ((how != SYSTEM_EXEC && allowcmd) ||
                (how == SYSTEM_EXEC && !allowcmd)) {
              /*
               * Disable any context so that warnings are given to everyone,
               * including syslog.
               */
              op = log_PromptContext;
              log_PromptContext = NULL;
	      FUNC4(bundle, argc, (char const *const *)argv, prompt,
                          name, cx);
              log_PromptContext = op;
            }
          }
        }

	FUNC5(fp);  /* everything read - get out */
	return 0;
      }
      break;
    }
  }
  FUNC5(fp);
  return -1;
}