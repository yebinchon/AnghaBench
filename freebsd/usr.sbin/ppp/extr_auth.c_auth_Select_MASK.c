#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {scalar_t__ s_addr; } ;
struct TYPE_7__ {scalar_t__ valid; TYPE_4__ ip; TYPE_1__ mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  ipcp; } ;
struct bundle {TYPE_3__ radius; TYPE_2__ ncp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ INADDR_NONE ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_REDUCE ; 
 scalar_t__ RADIUS_INADDR_POOL ; 
 int /*<<< orphan*/  SECRETFILE ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (struct bundle*,char*) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bundle*,TYPE_4__) ; 
 int /*<<< orphan*/  FUNC8 (struct bundle*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char**,char,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char const*) ; 
 int FUNC13 (char*) ; 
 char* FUNC14 (char const*,char) ; 

int
FUNC15(struct bundle *bundle, const char *name)
{
  FILE *fp;
  int n, lineno;
  char *vector[5], buff[LINE_LEN];
  const char *slash;

  if (*name == '\0') {
    FUNC6(&bundle->ncp.ipcp, INADDR_NONE);
    return 1;
  }

#ifndef NORADIUS
  if (bundle->radius.valid && bundle->radius.ip.s_addr != INADDR_NONE &&
	bundle->radius.ip.s_addr != RADIUS_INADDR_POOL) {
    /* We've got a radius IP - it overrides everything */
    if (!FUNC7(bundle, bundle->radius.ip))
      return 0;
    FUNC6(&bundle->ncp.ipcp, bundle->radius.mask.s_addr);
    /* Continue with ppp.secret in case we've got a new label */
  }
#endif

  fp = FUNC2(SECRETFILE);
  if (fp != NULL) {
again:
    lineno = 0;
    while (FUNC5(buff, sizeof buff, fp)) {
      lineno++;
      if (buff[0] == '#')
        continue;
      buff[FUNC13(buff) - 1] = '\0';
      FUNC10(vector, '\0', sizeof vector);
      if ((n = FUNC1(buff, vector, FUNC3(vector), PARSE_REDUCE)) < 0)
        FUNC9(LogWARN, "%s: %d: Invalid line\n", SECRETFILE, lineno);
      if (n < 2)
        continue;
      if (FUNC12(vector[0], name) == 0) {
        FUNC0(fp);
#ifndef NORADIUS
        if (!bundle->radius.valid || bundle->radius.ip.s_addr == INADDR_NONE) {
#endif
          if (n > 2 && *vector[2] && FUNC12(vector[2], "*") &&
              !FUNC8(bundle, vector[2], 1))
            return 0;
          FUNC6(&bundle->ncp.ipcp, INADDR_NONE);
#ifndef NORADIUS
        }
#endif
        if (n > 3 && *vector[3] && FUNC12(vector[3], "*"))
          FUNC4(bundle, vector[3]);
        return 1;		/* Valid */
      }
    }

    if ((slash = FUNC14(name, '\\')) != NULL && slash[1]) {
      /* Look for the name without the leading domain */
      name = slash + 1;
      FUNC11(fp);
      goto again;
    }

    FUNC0(fp);
  }

#ifndef NOPASSWDAUTH
  /* Let 'em in anyway - they must have been in the passwd file */
  FUNC6(&bundle->ncp.ipcp, INADDR_NONE);
  return 1;
#else
#ifndef NORADIUS
  if (bundle->radius.valid)
    return 1;
#endif

  /* Disappeared from ppp.secret ??? */
  return 0;
#endif
}