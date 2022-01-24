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
struct passwd {char* pw_name; } ;
struct cmdargs {int argn; int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int userok ; 

int
FUNC4(struct cmdargs const *arg)
{
  /* arg->bundle may be NULL (see system_IsValid()) ! */
  int f;
  struct passwd *pwd;

  if (userok == -1)
    userok = 0;

  pwd = FUNC2(FUNC0());
  if (pwd != NULL)
    for (f = arg->argn; f < arg->argc; f++)
      if (!FUNC3("*", arg->argv[f]) || !FUNC3(pwd->pw_name, arg->argv[f])) {
        userok = 1;
        break;
      }
  FUNC1();

  return 0;
}