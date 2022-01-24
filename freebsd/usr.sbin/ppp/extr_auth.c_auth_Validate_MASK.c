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
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bundle*,int /*<<< orphan*/ ) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_PASSWDAUTH ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_REDUCE ; 
 int /*<<< orphan*/  SECRETFILE ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int FUNC5 (char const*,char*,char const*) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char**,char,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 int FUNC11 (char*) ; 
 char* FUNC12 (char const*,char) ; 

int
FUNC13(struct bundle *bundle, const char *name, const char *key)
{
  /* Used by PAP routines */

  FILE *fp;
  int n, lineno;
  char *vector[5], buff[LINE_LEN];
  const char *slash;

  fp = FUNC3(SECRETFILE);
again:
  lineno = 0;
  if (fp != NULL) {
    while (FUNC6(buff, sizeof buff, fp)) {
      lineno++;
      if (buff[0] == '#')
        continue;
      buff[FUNC11(buff) - 1] = 0;
      FUNC8(vector, '\0', sizeof vector);
      if ((n = FUNC2(buff, vector, FUNC4(vector), PARSE_REDUCE)) < 0)
        FUNC7(LogWARN, "%s: %d: Invalid line\n", SECRETFILE, lineno);
      if (n < 2)
        continue;
      if (FUNC10(vector[0], name) == 0) {
        FUNC0(fp);
        return FUNC5(name, vector[1], key);
      }
    }
  }

  if ((slash = FUNC12(name, '\\')) != NULL && slash[1]) {
    /* Look for the name without the leading domain */
    name = slash + 1;
    if (fp != NULL) {
      FUNC9(fp);
      goto again;
    }
  }

  if (fp != NULL)
    FUNC0(fp);

#ifndef NOPASSWDAUTH
  if (FUNC1(bundle, OPT_PASSWDAUTH))
    return FUNC5(name, "*", key);
#endif

  return 0;			/* Invalid */
}