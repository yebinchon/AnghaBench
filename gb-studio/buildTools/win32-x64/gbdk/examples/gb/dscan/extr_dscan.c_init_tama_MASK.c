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
 size_t DEF_TC ; 
 scalar_t__ DEF_TS ; 
 scalar_t__ DEF_TX ; 
 int /*<<< orphan*/  DEF_TY ; 
 size_t MAX_TT ; 
 int /*<<< orphan*/ * foreCGB ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 
 size_t* tf ; 
 scalar_t__* tx ; 
 int /*<<< orphan*/ * ty ; 

void FUNC3()
{
  UBYTE i;

  for( i=0; i<MAX_TT; i++ ) {
    tf[i] = 0;
    tx[i] = i*4+DEF_TX;
    ty[i] = DEF_TY;
    FUNC2( i+DEF_TS, tf[i]+DEF_TC );
    FUNC1( i+DEF_TS, foreCGB[tf[i]+DEF_TC] );
    FUNC0( i+DEF_TS, tx[i], ty[i] );
  }
}