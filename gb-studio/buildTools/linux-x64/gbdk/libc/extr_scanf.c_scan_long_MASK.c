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
typedef  size_t UINT8 ;
typedef  size_t INT16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char FUNC2 (char) ; 

__attribute__((used)) static UINT8 FUNC3(char *s, UINT8 i, UINT8 base, INT16 *nb)
{
  INT16 n = 0;
  UINT8 j, sign = 0;

  switch(s[i])
    {
    case '-':
      sign++;
      /* and fall through */
    case '+':
      ++i;
      break;
    }
  while(1) {
    if(FUNC1(s[i]))
      j = s[i] - '0';
    else if(FUNC0(s[i]))
      j = FUNC2(s[i]) - 'A' + 10;
    else
      break;
    if(j >= base)
      break;
    n = base * n + j;
    i++;
  }
  *nb = (sign == 0 ? n : -n);
  return i;
}