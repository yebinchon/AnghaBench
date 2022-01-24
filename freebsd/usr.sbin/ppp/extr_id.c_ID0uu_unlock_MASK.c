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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LogID0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int FUNC3 (char const*) ; 

int
FUNC4(const char *basettyname)
{
  int ret;

  FUNC0();
  ret = FUNC3(basettyname);
  FUNC2(LogID0, "%d = uu_unlock(\"%s\")\n", ret, basettyname);
  FUNC1();
  return ret;
}