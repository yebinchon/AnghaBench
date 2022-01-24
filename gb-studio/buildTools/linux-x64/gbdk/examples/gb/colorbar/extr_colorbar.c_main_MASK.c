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
 int /*<<< orphan*/  DISPLAY_ON ; 
 int /*<<< orphan*/  SHOW_BKG ; 
 int VBK_REG ; 
 int /*<<< orphan*/  bar_a ; 
 int /*<<< orphan*/  bar_c ; 
 int /*<<< orphan*/  bar_m ; 
 int /*<<< orphan*/  bar_mHeight ; 
 int /*<<< orphan*/  bar_mWidth ; 
 int /*<<< orphan*/ * bar_p ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(void)
{
  /* Transfer color palettes */
  FUNC2( 7, 1, &bar_p[0] );
  FUNC2( 6, 1, &bar_p[4] );
  FUNC2( 5, 1, &bar_p[8] );
  FUNC2( 4, 1, &bar_p[12] );
  FUNC2( 3, 1, &bar_p[16] );
  FUNC2( 2, 1, &bar_p[20] );
  FUNC2( 1, 1, &bar_p[24] );
  FUNC2( 0, 1, &bar_p[28] );

  /* CHR code transfer */
  FUNC1( 0x0, 32, bar_c );

  /* Select VRAM bank 1 */
  VBK_REG = 1;
  /* Set attributes */
  FUNC3( 0, 0, bar_mWidth, bar_mHeight, bar_a );

  /* Select VRAM bank 0 */
  VBK_REG = 0;
  /* Set data */
  FUNC3( 0, 0, bar_mWidth, bar_mHeight, bar_m );

  SHOW_BKG;
  FUNC0();
  DISPLAY_ON;

  return 0;
}