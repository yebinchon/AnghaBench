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
struct mbuf {int m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 char* FUNC0 (struct mbuf const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void
FUNC6(int lev, const char *hdr, const struct mbuf *bp)
{
  if (FUNC2(lev)) {
    char buf[68];
    char *b, *c;
    const u_char *ptr;
    int f;

    if (hdr && *hdr)
      FUNC3(lev, "%s\n", hdr);

    b = buf;
    c = b + 50;
    do {
      f = bp->m_len;
      ptr = FUNC0(bp);
      while (f--) {
	FUNC5(b, " %02x", (int) *ptr);
        *c++ = FUNC1(*ptr) ? *ptr : '.';
        ptr++;
        b += 3;
        if (b == buf + 48) {
          FUNC4(b, ' ', 2);
          *c = '\0';
          FUNC3(lev, "%s\n", buf);
          b = buf;
          c = b + 50;
        }
      }
    } while ((bp = bp->m_next) != NULL);

    if (b > buf) {
      FUNC4(b, ' ', 50 - (b - buf));
      *c = '\0';
      FUNC3(lev, "%s\n", buf);
    }
  }
}