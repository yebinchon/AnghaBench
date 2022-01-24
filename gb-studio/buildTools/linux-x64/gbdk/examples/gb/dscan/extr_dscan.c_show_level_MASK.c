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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2( UBYTE i )
{
  unsigned char level[2];

  if( i < 9 ) {
    level[0] = 0x31+i;
  } else {
    level[0] = 0x41+i-9;
  }
  FUNC0( 19, 0, 1, 1, level );
  FUNC1( i );
}