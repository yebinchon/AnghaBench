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
typedef  int UBYTE ;

/* Variables and functions */
 scalar_t__ FIRST_X ; 
 scalar_t__ FIRST_Y ; 
 scalar_t__ TITLE_Y ; 
 int /*<<< orphan*/  UNSIGNED ; 
 scalar_t__ VAL_X ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 scalar_t__ soundReg ; 

void FUNC5()
{
  UBYTE reg;
  UBYTE i, j;

  FUNC0();
  FUNC1(FIRST_X, TITLE_Y);
  FUNC2("Register Dump");

  for(i = 0, j = 0; i <= 0x16; i++, j++) {
    if(i == 0x05 || i == 0x0F)
      i++;
    if(j%2 == 0) {
      FUNC1(FIRST_X, FIRST_Y+j/2);
      FUNC2("0xFF");
    } else {
      FUNC1(FIRST_X+6, FIRST_Y+j/2);
      FUNC4('-');
    }
    FUNC3(i+0x10, 16, UNSIGNED);
    if(j%2 == 0) {
      FUNC1(VAL_X, FIRST_Y+j/2);
    } else {
      FUNC1(VAL_X+2, FIRST_Y+j/2);
      FUNC4('-');
    }
    reg = ((UBYTE *)soundReg)[i];
    if(!(reg & 0xF0U)) FUNC4('0');
    FUNC3(reg, 16, UNSIGNED);
  }
}