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

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int MAXARGS ; 
 int FUNC0 (char*,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_REDUCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(char *line, const char *filename, int linenum)
{
  char *argv[MAXARGS];
  int argc, len;

  argc = FUNC0(line, argv, MAXARGS, PARSE_REDUCE);

  if (argc == 2 && !FUNC2(argv[1], ":"))
    return argv[0];

  if (argc != 1 || (len = FUNC3(argv[0])) < 2 || argv[0][len-1] != ':') {
      FUNC1(LogWARN, "Bad label in %s (line %d) - missing colon\n",
                 filename, linenum);
      return NULL;
  }
  argv[0][len-1] = '\0';	/* Lose the ':' */

  return argv[0];
}