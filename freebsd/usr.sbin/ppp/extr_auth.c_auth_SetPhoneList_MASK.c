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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_REDUCE ; 
 int /*<<< orphan*/  SECRETFILE ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,char,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char const*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char const*,char) ; 

int
FUNC12(const char *name, char *phone, int phonelen)
{
  FILE *fp;
  int n, lineno;
  char *vector[6], buff[LINE_LEN];
  const char *slash;

  fp = FUNC2(SECRETFILE);
  if (fp != NULL) {
again:
    lineno = 0;
    while (FUNC4(buff, sizeof buff, fp)) {
      lineno++;
      if (buff[0] == '#')
        continue;
      buff[FUNC9(buff) - 1] = '\0';
      FUNC6(vector, '\0', sizeof vector);
      if ((n = FUNC1(buff, vector, FUNC3(vector), PARSE_REDUCE)) < 0)
        FUNC5(LogWARN, "%s: %d: Invalid line\n", SECRETFILE, lineno);
      if (n < 5)
        continue;
      if (FUNC8(vector[0], name) == 0) {
        FUNC0(fp);
        if (*vector[4] == '\0')
          return 0;
        FUNC10(phone, vector[4], phonelen - 1);
        phone[phonelen - 1] = '\0';
        return 1;		/* Valid */
      }
    }

    if ((slash = FUNC11(name, '\\')) != NULL && slash[1]) {
      /* Look for the name without the leading domain */
      name = slash + 1;
      FUNC7(fp);
      goto again;
    }

    FUNC0(fp);
  }
  *phone = '\0';
  return 0;
}