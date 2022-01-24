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
struct pcm_channel {int /*<<< orphan*/  bufhard; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 scalar_t__ FUNC2 (struct pcm_channel*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct pcm_channel *c)
{
	int hwptr;

	FUNC1(c);
	hwptr = (FUNC2(c)) ? FUNC0(c->methods, c->devinfo) : 0;
	return (hwptr - (hwptr % FUNC3(c->bufhard)));
}