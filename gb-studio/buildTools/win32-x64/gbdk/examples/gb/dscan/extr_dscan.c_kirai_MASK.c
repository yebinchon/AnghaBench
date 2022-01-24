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
 int DEF_KC ; 
 scalar_t__ DEF_KS ; 
 int DEF_KX ; 
 scalar_t__ DEF_KY ; 
 size_t MAX_KT ; 
 scalar_t__ MIN_KY ; 
 int /*<<< orphan*/ * foreCGB ; 
 int* kf ; 
 int* kx ; 
 scalar_t__* ky ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__) ; 
 int pf ; 
 int px ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

void FUNC3()
{
  UBYTE i;

  for( i=0; i<MAX_KT; i++ ) {
    if( kf[i] != 0 ) {
      ky[i]--;
      if( kf[i] >=3 ) {
        kf[i]++;
        if( (kx[i]>(px-5))&&(kx[i]<(px+12)) ) {
          if( pf < 2 ) {
            /* out!! */
            pf = 2;
          }
        }
        if( kf[i] >= 6 ) {
          kf[i] = 0; kx[i] = DEF_KX; ky[i] = DEF_KY;
        }
      } else if( ky[i] <= MIN_KY ) {
        kf[i] = 3;
      } else {
        kf[i] = 3-kf[i];
      }
      FUNC2( i+DEF_KS, kf[i]+DEF_KC );
      FUNC1( i+DEF_KS, foreCGB[kf[i]+DEF_KC] );
      FUNC0( i+DEF_KS, kx[i], ky[i] );
    }
  }
}