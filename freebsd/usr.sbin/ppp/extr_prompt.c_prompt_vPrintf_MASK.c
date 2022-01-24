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
typedef  int /*<<< orphan*/  va_list ;
struct prompt {int nonewline; int /*<<< orphan*/  Term; scalar_t__ TermMode; scalar_t__ active; } ;

/* Variables and functions */
 int LINE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct prompt *p, const char *fmt, va_list ap)
{
  if (p && p->active) {
    char nfmt[LINE_LEN];
    const char *pfmt;

    if (p->TermMode) {
      /* Stuff '\r' in front of '\n' 'cos we're in raw mode */
      size_t len = FUNC2(fmt);

      if (len && len < sizeof nfmt - 1 && fmt[len-1] == '\n' &&
          (len == 1 || fmt[len-2] != '\r')) {
        FUNC1(nfmt, fmt);
        FUNC1(nfmt + len - 1, "\r\n");
        pfmt = nfmt;
      } else
        pfmt = fmt;
    } else
      pfmt = fmt;
    FUNC3(p->Term, pfmt, ap);
    FUNC0(p->Term);
    p->nonewline = 1;
  }
}