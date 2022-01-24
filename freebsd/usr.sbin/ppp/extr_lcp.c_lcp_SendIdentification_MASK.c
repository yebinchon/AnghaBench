#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_4__ {int /*<<< orphan*/  bundle; } ;
struct TYPE_3__ {char* ident; } ;
struct lcp {char* want_magic; TYPE_2__ fsm; TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODE_IDENT ; 
 int /*<<< orphan*/  DEF_MRU ; 
 int /*<<< orphan*/  LogLCP ; 
 int /*<<< orphan*/  MB_LCPOUT ; 
 int /*<<< orphan*/  FUNC0 (char**,int,char const**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**,char*) ; 

int
FUNC8(struct lcp *lcp)
{
  static u_char id;		/* Use a private id */
  u_char msg[DEF_MRU - 3];
  const char *argv[2];
  char *exp[2];

  if (*lcp->cfg.ident == '\0')
    return 0;

  argv[0] = lcp->cfg.ident;
  argv[1] = NULL;

  FUNC0(exp, 1, argv, lcp->fsm.bundle, 1, FUNC3());

  FUNC7(&lcp->want_magic, msg);
  FUNC6(msg + 4, exp[0], sizeof msg - 5);
  msg[sizeof msg - 1] = '\0';

  FUNC2(&lcp->fsm, CODE_IDENT, id++, msg, 4 + FUNC5(msg + 4), MB_LCPOUT);
  FUNC4(LogLCP, " MAGICNUM %08x\n", lcp->want_magic);
  FUNC4(LogLCP, " TEXT %s\n", msg + 4);

  FUNC1(1, exp);
  return 1;
}