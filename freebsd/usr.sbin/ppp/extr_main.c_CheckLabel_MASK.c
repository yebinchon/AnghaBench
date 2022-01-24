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

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int PHYS_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char const*,struct prompt*,int) ; 

__attribute__((used)) static void
FUNC5(const char *label, struct prompt *prompt, int mode)
{
  const char *err;

  if ((err = FUNC4(label, prompt, mode)) != NULL) {
    FUNC1(stderr, "%s: %s\n", label, err);
    if (mode == PHYS_DIRECT)
      FUNC3(LogWARN, "Label %s rejected -direct connection: %s\n",
                 label, err);
    FUNC2();
    FUNC0(1);
  }
}