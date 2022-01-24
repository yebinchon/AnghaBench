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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LogID0 ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*,char const*) ; 

FILE *
FUNC4(const char *path, const char *mode)
{
  FILE *ret;

  FUNC0();
  ret = FUNC2(path, mode);
  FUNC3(LogID0, "%p = fopen(\"%s\", \"%s\")\n", ret, path, mode);
  FUNC1();
  return ret;
}