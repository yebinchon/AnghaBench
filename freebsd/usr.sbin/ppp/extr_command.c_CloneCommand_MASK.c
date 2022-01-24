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
struct cmdargs {int argc; int argn; int /*<<< orphan*/  cx; int /*<<< orphan*/  bundle; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int LINE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct cmdargs const *arg)
{
  char namelist[LINE_LEN];
  char *name;
  int f;

  if (arg->argc == arg->argn)
    return -1;

  namelist[sizeof namelist - 1] = '\0';
  for (f = arg->argn; f < arg->argc; f++) {
    FUNC1(namelist, arg->argv[f], sizeof namelist - 1);
    for(name = FUNC2(namelist, ", "); name; name = FUNC2(NULL,", "))
      FUNC0(arg->bundle, arg->cx, name);
  }

  return 0;
}