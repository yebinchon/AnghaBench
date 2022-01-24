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
struct params {int frag; scalar_t__ state; scalar_t__ data_try; } ;

/* Variables and functions */
 scalar_t__ S_SEND_FRAG ; 
 scalar_t__ S_START ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct params*) ; 

void FUNC2(struct params *p)
{
	p->data_try = 0;
	p->frag = 1;
	FUNC1(p);

	if (p->state == S_SEND_FRAG) {
#if 0
		printf("Got ACK\n");
#endif
		p->state = S_START;
	}	
}