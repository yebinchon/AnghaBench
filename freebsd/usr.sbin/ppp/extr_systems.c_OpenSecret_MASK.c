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
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  LogWARN ; 
 char* PPP_CONFDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char const*) ; 

FILE *
FUNC3(const char *file)
{
  FILE *fp;
  char line[100];

  FUNC2(line, sizeof line, "%s/%s", PPP_CONFDIR, file);
  fp = FUNC0(line, "r");
  if (fp == NULL)
    FUNC1(LogWARN, "OpenSecret: Can't open %s.\n", line);
  return (fp);
}