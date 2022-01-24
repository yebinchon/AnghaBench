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
struct datalink {struct datalink* next; } ;
struct cmdargs {int argc; int argn; TYPE_1__* cmd; int /*<<< orphan*/  prompt; int /*<<< orphan*/ * argv; TYPE_2__* bundle; } ;
struct TYPE_5__ {struct datalink* links; } ;
struct TYPE_4__ {char* syntax; } ;

/* Variables and functions */
 int /*<<< orphan*/  Commands ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct datalink*) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogWARN ; 
 struct datalink* FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(struct cmdargs const *arg)
{
  if (arg->argc > arg->argn+1) {
    char namelist[LINE_LEN];
    struct datalink *cx;
    char *name;
    int result = 0;

    if (!FUNC3(arg->argv[arg->argn], "*")) {
      struct datalink *dl;

      cx = arg->bundle->links;
      while (cx) {
        /* Watch it, the command could be a ``remove'' */
        dl = cx->next;
        FUNC0(arg->bundle, Commands, arg->argc, arg->argn+1, arg->argv,
                 arg->prompt, cx);
        for (cx = arg->bundle->links; cx; cx = cx->next)
          if (cx == dl)
            break;		/* Pointer's still valid ! */
      }
    } else {
      FUNC4(namelist, arg->argv[arg->argn], sizeof namelist - 1);
      namelist[sizeof namelist - 1] = '\0';
      for(name = FUNC5(namelist, ", "); name; name = FUNC5(NULL,", "))
        if (!FUNC1(arg->bundle, name)) {
          FUNC2(LogWARN, "link: %s: Invalid link name\n", name);
          return 1;
        }

      FUNC4(namelist, arg->argv[arg->argn], sizeof namelist - 1);
      namelist[sizeof namelist - 1] = '\0';
      for(name = FUNC5(namelist, ", "); name; name = FUNC5(NULL,", ")) {
        cx = FUNC1(arg->bundle, name);
        if (cx)
          FUNC0(arg->bundle, Commands, arg->argc, arg->argn+1, arg->argv,
                   arg->prompt, cx);
        else {
          FUNC2(LogWARN, "link: %s: Invalidated link name !\n", name);
          result++;
        }
      }
    }
    return result;
  }

  FUNC2(LogWARN, "usage: %s\n", arg->cmd->syntax);
  return 2;
}