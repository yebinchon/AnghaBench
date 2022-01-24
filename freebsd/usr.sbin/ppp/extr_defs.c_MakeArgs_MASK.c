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
 int PARSE_NOHASH ; 
 char* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

int
FUNC2(char *script, char **pvect, int maxargs, int flags)
{
  int nargs;

  nargs = 0;
  while (*script) {
    script += FUNC1(script, " \t");
    if (*script == '#' && !(flags & PARSE_NOHASH)) {
      *script = '\0';
      break;
    }
    if (*script) {
      if (nargs >= maxargs - 1)
        break;
      *pvect++ = script;
      nargs++;
      script = FUNC0(script, flags);
      if (script == NULL)
        return -1;
      else if (!(flags & PARSE_NOHASH) && *script == '#')
        *script = '\0';
      else if (*script)
        *script++ = '\0';
    }
  }
  *pvect = NULL;
  return nargs;
}