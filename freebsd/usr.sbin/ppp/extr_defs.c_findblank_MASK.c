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
 int PARSE_REDUCE ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3(char *p, int flags)
{
  int instring;

  instring = 0;
  while (*p) {
    if (*p == '\\') {
      if (flags & PARSE_REDUCE) {
        FUNC1(p, p + 1, FUNC2(p));
        if (!*p)
          break;
      } else
        p++;
    } else if (*p == '"') {
      FUNC1(p, p + 1, FUNC2(p));
      instring = !instring;
      continue;
    } else if (!instring && (FUNC0(*p) ||
                             (*p == '#' && !(flags & PARSE_NOHASH))))
      return p;
    p++;
  }

  return instring ? NULL : p;
}