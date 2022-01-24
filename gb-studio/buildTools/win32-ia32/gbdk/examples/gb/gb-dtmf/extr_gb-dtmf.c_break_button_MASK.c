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
 int /*<<< orphan*/  break_tile ; 
 int /*<<< orphan*/  dialing_break ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 

void FUNC1(UBYTE x, UBYTE y)
{
	if(x <= 3 && y <= 3){
		FUNC0(x * 3 + 1, y * 3 + 5, 3, 3, break_tile);
	}
	if((x == 4 || x == 5) && (y <= 2)){
		FUNC0(x * 3 + 2, y * 3 + 5, 3, 3, break_tile);
	}
	if((x == 4 || x == 5) && (y == 3)){
		FUNC0(14, 14, 6, 3, dialing_break);
	}
}