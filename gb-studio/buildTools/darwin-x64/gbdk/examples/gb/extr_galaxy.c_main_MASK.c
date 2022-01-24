#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int UBYTE ;
struct TYPE_28__ {int w; } ;
struct TYPE_27__ {int w; } ;
struct TYPE_26__ {int w; } ;
struct TYPE_20__ {scalar_t__ l; void* h; } ;
struct TYPE_25__ {TYPE_1__ b; } ;
struct TYPE_21__ {scalar_t__ l; void* h; } ;
struct TYPE_24__ {TYPE_2__ b; } ;
struct TYPE_23__ {int w; } ;
struct TYPE_22__ {int w; } ;
struct TYPE_19__ {scalar_t__ w; } ;
struct TYPE_18__ {scalar_t__ w; } ;
struct TYPE_17__ {int w; } ;
struct TYPE_16__ {int w; } ;
struct TYPE_15__ {int w; } ;

/* Variables and functions */
 int BGP_REG ; 
 scalar_t__ CLOSED ; 
 scalar_t__ CLOSING ; 
 int /*<<< orphan*/  DISPLAY_OFF ; 
 int /*<<< orphan*/  DISPLAY_ON ; 
 int J_A ; 
 int J_B ; 
 int J_DOWN ; 
 int J_LEFT ; 
 int J_RIGHT ; 
 int J_SELECT ; 
 int J_START ; 
 int J_UP ; 
 int LCDC_REG ; 
 void* MAXWNDPOSX ; 
 void* MAXWNDPOSY ; 
 scalar_t__ NBDFRAMES ; 
 int OBP0_REG ; 
 int OBP1_REG ; 
 scalar_t__ OPENED ; 
 scalar_t__ OPENING ; 
 scalar_t__ SCX_REG ; 
 scalar_t__ SCY_REG ; 
 int /*<<< orphan*/  STARTFADE ; 
 void* WX_REG ; 
 void* WY_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  bkg_data ; 
 int /*<<< orphan*/  bkg_tiles ; 
 TYPE_14__ bposx ; 
 TYPE_13__ bposy ; 
 TYPE_12__ bspx ; 
 TYPE_11__ bspy ; 
 int /*<<< orphan*/  color ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  door1_tiles ; 
 scalar_t__ doorpos ; 
 scalar_t__ doorstate ; 
 int /*<<< orphan*/  earth_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  frame_data ; 
 int /*<<< orphan*/  frame_tiles ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ sframe ; 
 TYPE_10__ sposx ; 
 TYPE_9__ sposy ; 
 TYPE_8__ sspx ; 
 TYPE_7__ sspy ; 
 int /*<<< orphan*/  std_data ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  time ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_6__ wposx ; 
 TYPE_5__ wposy ; 
 TYPE_4__ wspx ; 
 TYPE_3__ wspy ; 

int FUNC16()
{
  UBYTE i, j;

  FUNC1();
  DISPLAY_OFF;
  LCDC_REG = 0x67;
  /*
   * LCD        = Off
   * WindowBank = 0x9C00
   * Window     = On
   * BG Chr     = 0x8800
   * BG Bank    = 0x9800
   * OBJ        = 8x16
   * OBJ        = On
   * BG         = On
   */

  doorstate = CLOSED;

  /* Set palettes */
  BGP_REG = OBP0_REG = OBP1_REG = 0xE4U;

  /* Initialize the background */
  FUNC8(0xFC, 0x04, std_data);
  FUNC8(0x00, 0x2D, bkg_data);
  /*
   * Draw the background
   *
   * Width  = 0x100 = 0x20 * 8
   * Height = 0x100 = 0x20 * 8
   */
  for(i = 0; i < 32; i+=8)
    for(j = 0; j < 32; j+=8)
      FUNC9(i, j, 8, 8, bkg_tiles);
  bposx.w = 0;
  SCX_REG = 0;
  bposy.w = 0;
  SCY_REG = 0;
  bspx.w = 0xFF00;
  bspy.w = 0x0080;

  /* Initialize the window */
  FUNC12(0x80, 0x21, frame_data);
  /*
   * Draw the frame in the window
   *
   * Width  = 0x80 = 0x10 * 8
   * Height = 0x50 = 0x0A * 8
   */
  FUNC13(0, 0, 16, 10, frame_tiles);
  /*
   * Draw the door in the window
   *
   * Width  = 0x60 = 0x20 * 12
   * Height = 0x30 = 0x20 * 6
   */
  FUNC13(2, 2, 12, 6, door1_tiles);
  wposx.b.h = MAXWNDPOSX;
  wposx.b.l = 0;
  WX_REG = MAXWNDPOSX;
  wposy.b.h = MAXWNDPOSY;
  wposy.b.l = 0;
  WY_REG = MAXWNDPOSY;
  wspx.w = 0xFF80;
  wspy.w = 0xFFC0;

  /* Initialize the sprite */
  FUNC10(0x00, 0x1C, earth_data);
  FUNC11(0, 0x00);
  FUNC11(1, 0x00);
  sframe = 0;
  sposx.w  = 0x1000;
  sposy.w  = 0x1000;
  sspx.w  = 0x0040;
  sspy.w  = 0x0040;
  FUNC14();
  FUNC6();

  DISPLAY_ON;
  FUNC3();

  while(1) {
    /* Skip four VBLs (slow down animation) */
    for(i = 0; i < 4; i++)
      FUNC15();
    time++;
    FUNC4();
    FUNC2();
    FUNC7();
    FUNC0();
    i = FUNC5();
    if(i & J_B) {
      if(i & J_UP)
	bspy.w -= 0x0010;
      if(i & J_DOWN)
	bspy.w += 0x0010;
      if(i & J_LEFT)
	bspx.w -= 0x0010;
      if(i & J_RIGHT)
	bspx.w += 0x0010;
    } else if(i & J_A) {
      if(i & J_UP)
	wspy.w -= 0x0010;
      if(i & J_DOWN)
	wspy.w += 0x0010;
      if(i & J_LEFT)
	wspx.w -= 0x0010;
      if(i & J_RIGHT)
	wspx.w += 0x0010;
    } else {
      if(i & J_SELECT)
	color = STARTFADE;
      if(i & J_START)
	if(doorstate == CLOSED) {
	  doorstate = OPENING;
	  doorpos = 0;
	} else if(doorstate == OPENED) {
	  doorstate = CLOSING;
	  doorpos = NBDFRAMES;
	}
      if(i & J_UP)
	sspy.w -= 0x0010;
      if(i & J_DOWN)
	sspy.w += 0x0010;
      if(i & J_LEFT)
	sspx.w -= 0x0010;
      if(i & J_RIGHT)
	sspx.w += 0x0010;
    }
  }
}