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
 scalar_t__ CGB_TYPE ; 
 int /*<<< orphan*/  DEF_SP ; 
 int /*<<< orphan*/  SHOW_BKG ; 
 int /*<<< orphan*/  SHOW_SPRITES ; 
 int /*<<< orphan*/  SPRITES_8x8 ; 
 scalar_t__ _cpu ; 
 int /*<<< orphan*/  bkg ; 
 int /*<<< orphan*/  bkg_c ; 
 int /*<<< orphan*/  bkg_m ; 
 int /*<<< orphan*/ * bkg_p ; 
 int /*<<< orphan*/  fore ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg_1up ; 
 int /*<<< orphan*/  msg_lv ; 
 int /*<<< orphan*/ * obj_p ; 
 int pw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

void FUNC8()
{
  UBYTE n;

  if( _cpu==CGB_TYPE ) {
    /* Transfer color palette */
    FUNC3( 0, 1, &bkg_p[0] );
    FUNC3( 1, 1, &bkg_p[4] );
    FUNC3( 2, 1, &bkg_p[8] );
    FUNC3( 3, 1, &bkg_p[12] );
    FUNC3( 4, 1, &bkg_p[16] );
    FUNC3( 5, 1, &bkg_p[20] );
    FUNC3( 6, 1, &bkg_p[24] );
    FUNC3( 7, 1, &bkg_p[28] );
    FUNC6( 0, 1, &obj_p[0] );
    FUNC6( 1, 1, &obj_p[4] );
    FUNC6( 2, 1, &obj_p[8] );
    FUNC6( 3, 1, &obj_p[12] );
    FUNC6( 4, 1, &obj_p[16] );
    FUNC6( 5, 1, &obj_p[20] );
    FUNC6( 6, 1, &obj_p[24] );
    FUNC6( 7, 1, &obj_p[28] );

    /* set attributes */
    FUNC1( 0, 0, 20, 18, bkg_c );
    FUNC4(  0, 0, 20, 18, bkg_c );
  } else {
    FUNC4(  0, 0, 20, 18, bkg_m );
  }

  pw = 50;
  FUNC2(  0, 96, bkg );
  FUNC4(  0, 0, 3, 1, msg_1up );
  FUNC4( 16, 0, 2, 1, msg_lv );
  SHOW_BKG;
  SPRITES_8x8;
  FUNC5( 0, 128, fore );
  SHOW_SPRITES;
  for( n=0; n<40; n++ ) {
    FUNC7( n, DEF_SP );
    FUNC0( n, 0, 0 );
  }
}