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
 int /*<<< orphan*/  FUNC0 (char const* const,char*,int) ; 

__attribute__((used)) static int
FUNC1(char const *const *argv, int n)
{
  /* Is arg n of the given command to be hidden from the log ? */

  /* set authkey xxxxx */
  /* set key xxxxx */
  if (n == 2 && !FUNC0(argv[0], "se", 2) &&
      (!FUNC0(argv[1], "authk", 5) || !FUNC0(argv[1], "ke", 2)))
    return 1;

  /* passwd xxxxx */
  if (n == 1 && !FUNC0(argv[0], "p", 1))
    return 1;

  /* set server port xxxxx .... */
  if (n == 3 && !FUNC0(argv[0], "se", 2) &&
      !FUNC0(argv[1], "se", 2))
    return 1;

  return 0;
}