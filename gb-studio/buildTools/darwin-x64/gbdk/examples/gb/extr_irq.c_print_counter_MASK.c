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
typedef  scalar_t__ UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 scalar_t__ tim_cnt ; 
 scalar_t__ vbl_cnt ; 

void FUNC5()
{
  UBYTE cnt;

  /* Ensure mutual exclusion (not really necessary in this example)... */
  FUNC0();
  cnt = tim_cnt;
  FUNC1();

  FUNC4(" TIM %u", (unsigned int)cnt);
  FUNC2(9, FUNC3());

  /* Ensure mutual exclusion (not really necessary in this example)... */
  FUNC0();
  cnt = vbl_cnt;
  FUNC1();

  FUNC4("- VBL %u\n", (unsigned int)cnt);
}