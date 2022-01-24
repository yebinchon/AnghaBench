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
struct pcm_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int FUNC1 (struct pcm_channel*,int,int,int) ; 

int
FUNC2(struct pcm_channel *c, int blkcnt, int blksz)
{
	FUNC0(c);
	/* Destroy latency profile, enforce blksz/blkcnt */
	return FUNC1(c, -1, blkcnt, blksz);
}