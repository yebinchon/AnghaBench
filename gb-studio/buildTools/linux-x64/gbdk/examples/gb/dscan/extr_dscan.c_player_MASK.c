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
typedef  int UINT16 ;
typedef  int UBYTE ;

/* Variables and functions */
 int DEF_PC0 ; 
 int DEF_PC1 ; 
 int DEF_PF ; 
 int /*<<< orphan*/  DEF_PY ; 
 int DEF_SP ; 
 int DIV_REG ; 
 int J_DOWN ; 
 int J_LEFT ; 
 int J_RIGHT ; 
 int J_SELECT ; 
 int J_START ; 
 int J_UP ; 
 scalar_t__ MAX_PX ; 
 int MAX_TT ; 
 scalar_t__ MIN_PX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * foreCGB ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 () ; 
 int k_left ; 
 int k_right ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int pf ; 
 int pl ; 
 int ps ; 
 int pw ; 
 scalar_t__ px ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int* tf ; 
 scalar_t__* tx ; 
 int /*<<< orphan*/ * ty ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17()
{
  UBYTE key;
  UBYTE i;
  UINT16 seed;

  key = FUNC8();
  /* pause */
  if( key & J_START ) {
    if( pf == DEF_PF ) {
      /* Initialize the random number generator */
      seed = DIV_REG;
      FUNC16();
      seed |= ((UINT16)DIV_REG << 8);
      FUNC7(seed);
      FUNC1();
      FUNC5();
      FUNC4();
      FUNC6();
      FUNC2();
      FUNC3();
      FUNC0( 500 );
    } else {
      FUNC14();
      FUNC16();
      key = FUNC8();
      while( !(key & J_START) ) {
        key = FUNC8();
        if( key & J_DOWN ) {
          if(pl > 0)
            pl--;
          FUNC13( pl );
          FUNC16();
        } else if( key & J_UP ) {
          if(pl < 8)
            pl++;
          FUNC13( pl );
          FUNC16();
        } else if( key & J_LEFT ) {
          while( FUNC8() & J_LEFT ) {
            if(pw > 0)
              pw--;
            FUNC15( pw );
            FUNC0( 250 );
          }
          FUNC15( ps );
        } else if( key & J_RIGHT ) {
          while( FUNC8() & J_RIGHT ) {
            if(pw < 99)
              pw++;
            FUNC15( pw );
            FUNC0( 250 );
          }
          FUNC15( ps );
        } else if( key & J_SELECT ) {
          i = k_right;
          k_right = k_left;
          k_left  = i;
          FUNC16();
        }
      }
      FUNC16();
      FUNC1();
      FUNC0( 500 );
    }
    return;
  }

  /* dead */
  if( pf > 1 ) {
    if( pf < DEF_PF ) {
      FUNC11( 0, pf*2+DEF_PC0 );
      FUNC10( 0, foreCGB[pf*2+DEF_PC0] );
      FUNC11( 1, pf*2+DEF_PC1 );
      FUNC10( 1, foreCGB[pf*2+DEF_PC1] );
      pf++;
    } else {
      FUNC11( 0, DEF_SP );
      FUNC11( 1, DEF_SP );
      FUNC12();
    }
    return;
  }

  /* move */
  if( (key&J_LEFT)&&(px>MIN_PX) ) {
    px--;
    FUNC9( 0, px, DEF_PY ); FUNC9( 1, px+8, DEF_PY );
  } else if( (key&J_RIGHT)&&(px<MAX_PX) ) {
    px++;
    FUNC9( 0, px, DEF_PY ); FUNC9( 1, px+8, DEF_PY );
  }
  /* shot */
  if( key & k_left ) {  /* change J_B to J_A */
    if( pf == 0 ) {
      pf = 1;
      for( i=0; i<MAX_TT; i++ ) {
        if( tf[i] == 0 ) {
          tf[i] = 1; tx[i] = px-4; ty[i] = DEF_PY;
          break;
        }
      }
    }
  } else if( key & k_right ) {  /* change J_A to J_B */
    if( pf == 0 ) {
      pf = 1;
      for( i=0; i<MAX_TT; i++ ) {
        if( tf[i] == 0 ) {
          tf[i] = 1; tx[i] = px+12; ty[i] = DEF_PY;
          break;
        }
      }
    }
  } else if( pf == 1 ) {
    pf = 0;
  }
}