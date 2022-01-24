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
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static char *
FUNC4(char *big, const char *little)
{
  /* Get the first occurrence of the word ``little'' in ``big'' */
  char *pos;
  int len;

  pos = big;
  len = FUNC2(little);

  while ((pos = FUNC3(pos, little)) != NULL)
    if ((pos != big && FUNC0(pos[-1])) || FUNC0(pos[len]))
      pos++;
    else if (pos != big && pos[-1] == '\\')
      FUNC1(pos - 1, pos, FUNC2(pos) + 1);
    else
      break;

  return pos;
}