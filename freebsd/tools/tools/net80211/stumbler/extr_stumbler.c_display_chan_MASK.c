#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int chan; } ;

/* Variables and functions */
 int COLS ; 
 int LINES ; 
 TYPE_1__ chaninfo ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

void FUNC3() {
	int x, y;
	char tmp[3];

	x = COLS - 2;
	y = LINES - 1;

	FUNC2(tmp, sizeof(tmp), "%.2d", chaninfo.chan);
	FUNC0(y, x, tmp);
	FUNC1();
}