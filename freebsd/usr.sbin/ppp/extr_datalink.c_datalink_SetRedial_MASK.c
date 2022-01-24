#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int argc; int argn; char** argv; TYPE_3__* cx; } ;
struct TYPE_4__ {int timeout; int inc; int maxinc; int next_timeout; int max; } ;
struct TYPE_5__ {TYPE_1__ dial; } ;
struct TYPE_6__ {TYPE_2__ cfg; } ;

/* Variables and functions */
 int DIAL_NEXT_TIMEOUT ; 
 int /*<<< orphan*/  LogWARN ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*,char) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

int
FUNC6(struct cmdargs const *arg)
{
  const char *sep, *osep;
  int timeout, inc, maxinc, tries;

  if (arg->argc == arg->argn+1 || arg->argc == arg->argn+2) {
    if (FUNC5(arg->argv[arg->argn], "random", 6) == 0 &&
	(arg->argv[arg->argn][6] == '\0' || arg->argv[arg->argn][6] == '.')) {
      arg->cx->cfg.dial.timeout = -1;
      FUNC2();
    } else {
      timeout = FUNC0(arg->argv[arg->argn]);

      if (timeout >= 0)
	arg->cx->cfg.dial.timeout = timeout;
      else {
	FUNC1(LogWARN, "Invalid redial timeout\n");
	return -1;
      }
    }

    sep = FUNC4(arg->argv[arg->argn], '+');
    if (sep) {
      inc = FUNC0(++sep);
      osep = sep;
      if (inc >= 0)
        arg->cx->cfg.dial.inc = inc;
      else {
        FUNC1(LogWARN, "Invalid timeout increment\n");
        return -1;
      }
      sep = FUNC4(sep, '-');
      if (sep) {
        maxinc = FUNC0(++sep);
        if (maxinc >= 0)
          arg->cx->cfg.dial.maxinc = maxinc;
        else {
          FUNC1(LogWARN, "Invalid maximum timeout increments\n");
          return -1;
        }
      } else {
        /* Default timeout increment */
        arg->cx->cfg.dial.maxinc = 10;
        sep = osep;
      }
    } else {
      /* Default timeout increment & max increment */
      arg->cx->cfg.dial.inc = 0;
      arg->cx->cfg.dial.maxinc = 10;
      sep = arg->argv[arg->argn];
    }

    sep = FUNC4(sep, '.');
    if (sep) {
      if (FUNC3(++sep, "random") == 0) {
	arg->cx->cfg.dial.next_timeout = -1;
	FUNC2();
      } else {
	timeout = FUNC0(sep);
	if (timeout >= 0)
	  arg->cx->cfg.dial.next_timeout = timeout;
	else {
	  FUNC1(LogWARN, "Invalid next redial timeout\n");
	  return -1;
	}
      }
    } else
      /* Default next timeout */
      arg->cx->cfg.dial.next_timeout = DIAL_NEXT_TIMEOUT;

    if (arg->argc == arg->argn+2) {
      tries = FUNC0(arg->argv[arg->argn+1]);

      if (tries >= 0) {
	arg->cx->cfg.dial.max = tries;
      } else {
	FUNC1(LogWARN, "Invalid retry value\n");
	return 1;
      }
    }
    return 0;
  }

  return -1;
}