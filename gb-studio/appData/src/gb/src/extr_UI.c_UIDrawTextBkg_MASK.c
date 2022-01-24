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
typedef  size_t UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,int,int,size_t*) ; 
 size_t FUNC1 (char*) ; 

void FUNC2(char *str, UBYTE x, UBYTE y)
{
  UBYTE letter, i, len;
  len = FUNC1(str);
  for (i = 0; i != len; i++)
  {
    letter = str[i] + 0xA5;
    FUNC0(x + i, y, 1, 1, &letter);
  }
}