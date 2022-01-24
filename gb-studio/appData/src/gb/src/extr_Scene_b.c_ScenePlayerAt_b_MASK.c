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
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ actors ; 

UBYTE FUNC3(UBYTE tx_a, UBYTE ty_a)
{
  UBYTE tx_b, ty_b;
  tx_b = FUNC2(FUNC0((UBYTE *)actors));
  ty_b = FUNC2(FUNC1((UBYTE *)actors));
  if ((ty_a == ty_b || ty_a == ty_b - 1) &&
      (tx_a == tx_b || tx_a == tx_b + 1 || tx_a + 1 == tx_b))
  {
    return 1;
  }
  else
  {
    return 0;
  }
}