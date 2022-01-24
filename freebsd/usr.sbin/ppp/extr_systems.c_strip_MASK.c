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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *
FUNC2(char *line)
{
  int len;

  len = FUNC1(line);
  while (len && (line[len-1] == '\n' || line[len-1] == '\r' ||
                 FUNC0(line[len-1])))
    line[--len] = '\0';

  while (FUNC0(*line))
    line++;

  if (*line == '#')
    *line = '\0';

  return line;
}