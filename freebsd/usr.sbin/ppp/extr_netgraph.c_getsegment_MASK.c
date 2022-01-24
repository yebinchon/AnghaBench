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
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 size_t FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *what, char *word, size_t sz, const char *from,
           const char *sep, const char **endp)
{
  size_t len;

  if ((len = FUNC1(from, sep)) == 0) {
    FUNC0(LogWARN, "%s name should not be empty !\n", what);
    return 0;
  }

  if (len >= sz) {
    FUNC0(LogWARN, "%s name too long, max %d !\n", what, sz - 1);
    return 0;
  }

  FUNC2(word, from, len);
  word[len] = '\0';

  *endp = from + len;
  *endp += FUNC3(*endp, sep);

  return 1;
}