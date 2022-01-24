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
struct bundle {int dummy; } ;

/* Variables and functions */
 int MAXARGS ; 
 int FUNC0 (char*,int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bundle*,int,char const* const*,struct prompt*,char const*,int /*<<< orphan*/ *) ; 

int
FUNC2(struct bundle *bundle, char *buff, int nb, struct prompt *prompt,
              const char *label)
{
  int argc;
  char *argv[MAXARGS];

  if ((argc = FUNC0(buff, nb, argv, 0)) < 0)
    return 0;

  FUNC1(bundle, argc, (char const *const *)argv, prompt, label, NULL);
  return 1;
}