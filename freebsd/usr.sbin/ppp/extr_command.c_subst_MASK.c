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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 char* FUNC1 (char*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static char *
FUNC4(char *tgt, const char *oldstr, const char *newstr)
{
  /* tgt is a malloc()d area... realloc() as necessary */
  char *word, *ntgt;
  int ltgt, loldstr, lnewstr, pos;

  if ((word = FUNC3(tgt, oldstr)) == NULL)
    return tgt;

  ltgt = FUNC2(tgt) + 1;
  loldstr = FUNC2(oldstr);
  lnewstr = FUNC2(newstr);
  do {
    pos = word - tgt;
    if (loldstr > lnewstr)
      FUNC0(word + loldstr, word + lnewstr, ltgt - pos - loldstr);
    if (loldstr != lnewstr) {
      ntgt = FUNC1(tgt, ltgt += lnewstr - loldstr);
      if (ntgt == NULL)
        break;			/* Oh wonderful ! */
      word = ntgt + pos;
      tgt = ntgt;
    }
    if (lnewstr > loldstr)
      FUNC0(word + loldstr, word + lnewstr, ltgt - pos - lnewstr);
    FUNC0(newstr, word, lnewstr);
  } while ((word = FUNC3(word, oldstr)));

  return tgt;
}