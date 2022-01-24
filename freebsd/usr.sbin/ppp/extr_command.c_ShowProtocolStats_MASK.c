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
struct link {int /*<<< orphan*/  name; } ;
struct cmdargs {int /*<<< orphan*/  prompt; } ;

/* Variables and functions */
 struct link* FUNC0 (struct cmdargs const*) ; 
 int /*<<< orphan*/  FUNC1 (struct link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cmdargs const *arg)
{
  struct link *l = FUNC0(arg);

  FUNC2(arg->prompt, "%s:\n", l->name);
  FUNC1(l, arg->prompt);
  return 0;
}