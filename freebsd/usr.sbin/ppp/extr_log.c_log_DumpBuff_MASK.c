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
typedef  char u_char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

void
FUNC5(int lev, const char *hdr, const u_char *ptr, int n)
{
  if (FUNC1(lev)) {
    char buf[68];
    char *b, *c;

    if (hdr && *hdr)
      FUNC2(lev, "%s\n", hdr);
    while (n > 0) {
      b = buf;
      c = b + 50;
      for (b = buf; b != buf + 48 && n--; b += 3, ptr++) {
	FUNC4(b, " %02x", (int) *ptr);
        *c++ = FUNC0(*ptr) ? *ptr : '.';
      }
      FUNC3(b, ' ', 50 - (b - buf));
      *c = '\0';
      FUNC2(lev, "%s\n", buf);
    }
  }
}