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
 scalar_t__ DEF_PX ; 
 int /*<<< orphan*/  DEF_PY ; 
 int /*<<< orphan*/ * foreCGB ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ pf ; 
 scalar_t__ px ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3()
{
  pf = 0; px = DEF_PX;
  FUNC2( 0, 0 );
  FUNC1( 0, foreCGB[0] );
  FUNC0( 0, px, DEF_PY );
  FUNC2( 1, 1 );
  FUNC1( 1, foreCGB[1] );
  FUNC0( 1, px+8, DEF_PY );
}