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
typedef  size_t BYTE ;

/* Variables and functions */
 size_t UNSIGNED ; 
 char* digits ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(BYTE number, BYTE radix, BYTE signed_value)
{
  UBYTE i;

  if(number < 0 && signed_value) {
    FUNC0('-');
    number = -number;
  }
  if((i = (UBYTE)number / (UBYTE)radix) != 0)
    FUNC1(i, radix, UNSIGNED);
  FUNC0(digits[(UBYTE)number % (UBYTE)radix]);
}