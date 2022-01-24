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
struct params {int state; } ;

/* Variables and functions */
#define  S_START 129 
#define  S_WAIT_ACK 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct params*) ; 
 int /*<<< orphan*/  FUNC3 (struct params*) ; 

void FUNC4(struct params *p)
{
	switch (p->state) {
	case S_START:
		FUNC2(p);
		break;
	
	case S_WAIT_ACK:
		FUNC3(p);
		break;

	default:
		FUNC1("wtf %d\n", p->state);
		FUNC0();
		break;
	}
}