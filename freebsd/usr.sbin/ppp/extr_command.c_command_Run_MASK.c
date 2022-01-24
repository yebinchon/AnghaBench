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
struct prompt {int dummy; } ;
struct datalink {int dummy; } ;
struct bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Commands ; 
 int /*<<< orphan*/  FUNC0 (struct bundle*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char const* const*,struct prompt*,struct datalink*) ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  LogCOMMAND ; 
 scalar_t__ FUNC1 (char const* const*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const* const,int) ; 

void
FUNC7(struct bundle *bundle, int argc, char const *const *argv,
           struct prompt *prompt, const char *label, struct datalink *cx)
{
  if (argc > 0) {
    if (FUNC2(LogCOMMAND)) {
      char buf[LINE_LEN];
      int f;
      size_t n;

      if (label) {
        FUNC6(buf, label, sizeof buf - 3);
        buf[sizeof buf - 3] = '\0';
        FUNC4(buf, ": ");
        n = FUNC5(buf);
      } else {
        *buf = '\0';
        n = 0;
      }
      buf[sizeof buf - 1] = '\0';	/* In case we run out of room in buf */

      for (f = 0; f < argc; f++) {
        if (n < sizeof buf - 1 && f)
          buf[n++] = ' ';
        if (FUNC1(argv, f))
          FUNC6(buf+n, "********", sizeof buf - n - 1);
        else
          FUNC6(buf+n, argv[f], sizeof buf - n - 1);
        n += FUNC5(buf+n);
      }
      FUNC3(LogCOMMAND, "%s\n", buf);
    }
    FUNC0(bundle, Commands, argc, 0, argv, prompt, cx);
  }
}