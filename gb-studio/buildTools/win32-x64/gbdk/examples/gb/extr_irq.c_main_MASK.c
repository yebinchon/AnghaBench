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
 int TAC_REG ; 
 int TIM_IFLAG ; 
 int TMA_REG ; 
 int VBL_IFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  tim ; 
 scalar_t__ tim_cnt ; 
 int /*<<< orphan*/  vbl ; 
 scalar_t__ vbl_cnt ; 

int FUNC7()
{
  /* Ensure mutual exclusion (not really necessary in this example)... */
  FUNC3();
  vbl_cnt = tim_cnt = 0;
  FUNC1(vbl);
  FUNC0(tim);
  FUNC4();

  /* Set TMA to divide clock by 0x100 */
  TMA_REG = 0x00U;
  /* Set clock to 4096 Hertz */
  TAC_REG = 0x04U;
  /* Handle VBL and TIM interrupts */
  FUNC6(VBL_IFLAG | TIM_IFLAG);

  while(1) {
    FUNC5();
    FUNC2(1000UL);
  }
}