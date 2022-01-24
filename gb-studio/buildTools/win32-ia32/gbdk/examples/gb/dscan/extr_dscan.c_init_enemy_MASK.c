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
 scalar_t__ DEF_ES0 ; 
 scalar_t__ DEF_ES1 ; 
 int /*<<< orphan*/  DEF_SP ; 
 size_t MAX_ET ; 
 scalar_t__* ef ; 
 scalar_t__* ex ; 
 scalar_t__* ey ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2()
{
  UBYTE i;

  for( i=0; i<MAX_ET; i++ ) {
    ef[i] = 0;
    ex[i] = 0;
    ey[i] = 0;
    FUNC1( i*2+DEF_ES0, DEF_SP );
    FUNC1( i*2+DEF_ES1, DEF_SP );
    FUNC0( i*2+DEF_ES0, ex[i], ey[i] );
    FUNC0( i*2+DEF_ES1, ex[i], ey[i] );
  }
}