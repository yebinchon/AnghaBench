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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,char*,int) ; 
 int FUNC2 (int,char*,int,int /*<<< orphan*/ ) ; 

void FUNC3(int dude, int raw)
{
	char buf[4096];
	int rd;

	while (1) {
		rd = FUNC2(raw, buf, sizeof(buf), 0);
		if (rd == -1)
			FUNC0(1, "recv()");
		
		if (FUNC1(dude, buf, rd) == -1)
			return;
	}
}