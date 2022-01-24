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
 int CTRL_INCLUDE ; 
 int CTRL_UNKNOWN ; 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(char *line, char *arg)
{
  const char *end;

  if (!FUNC3(line, "include", 7) && FUNC1(line[7])) {
    end = FUNC0(line+8, arg);
    if (*end && *end != '#')
      FUNC2(LogWARN, "usage: !include filename\n");
    else
      return CTRL_INCLUDE;
  }
  return CTRL_UNKNOWN;
}