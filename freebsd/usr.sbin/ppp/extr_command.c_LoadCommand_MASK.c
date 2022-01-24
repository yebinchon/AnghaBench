#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int argn; int argc; char** argv; TYPE_2__* bundle; int /*<<< orphan*/  cx; int /*<<< orphan*/  prompt; } ;
struct TYPE_4__ {int all; } ;
struct TYPE_5__ {TYPE_1__ phys_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFFILE ; 
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cmdargs const *arg)
{
  const char *err;
  int n, mode;

  mode = arg->bundle->phys_type.all;

  if (arg->argn < arg->argc) {
    for (n = arg->argn; n < arg->argc; n++)
      if ((err = FUNC2(arg->argv[n], arg->prompt, mode)) != NULL) {
        FUNC1(LogWARN, "%s: %s\n", arg->argv[n], err);
        return 1;
      }

    for (n = arg->argn; n < arg->argc; n++) {
      FUNC0(arg->bundle, arg->argv[arg->argc - 1]);
      FUNC3(arg->bundle, arg->argv[n], CONFFILE, arg->prompt, arg->cx);
    }
    FUNC0(arg->bundle, arg->argv[arg->argc - 1]);
  } else if ((err = FUNC2("default", arg->prompt, mode)) != NULL) {
    FUNC1(LogWARN, "default: %s\n", err);
    return 1;
  } else {
    FUNC0(arg->bundle, "default");
    FUNC3(arg->bundle, "default", CONFFILE, arg->prompt, arg->cx);
    FUNC0(arg->bundle, "default");
  }

  return 0;
}