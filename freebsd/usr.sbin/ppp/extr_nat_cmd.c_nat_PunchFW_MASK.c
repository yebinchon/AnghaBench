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
struct cmdargs {int argc; int argn; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKT_ALIAS_PUNCH_FW ; 
 int /*<<< orphan*/  la ; 
 long FUNC2 (int /*<<< orphan*/ ,char**,int) ; 

int
FUNC3(struct cmdargs const *arg)
{
  char *end;
  long base, count;

  if (arg->argc == arg->argn) {
    FUNC1(la, 0, PKT_ALIAS_PUNCH_FW);
    return 0;
  }

  if (arg->argc != arg->argn + 2)
    return -1;

  base = FUNC2(arg->argv[arg->argn], &end, 10);
  if (*end != '\0' || base < 0)
    return -1;

  count = FUNC2(arg->argv[arg->argn + 1], &end, 10);
  if (*end != '\0' || count < 0)
    return -1;

  FUNC0(la, base, count);
  FUNC1(la, PKT_ALIAS_PUNCH_FW, PKT_ALIAS_PUNCH_FW);

  return 0;
}