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
struct pcm_channel {scalar_t__ direction; int /*<<< orphan*/  interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 

void
FUNC3(struct pcm_channel *c)
{

	FUNC0(c);

	c->interrupts++;

	if (c->direction == PCMDIR_PLAY)
		FUNC2(c);
	else
		FUNC1(c);
}