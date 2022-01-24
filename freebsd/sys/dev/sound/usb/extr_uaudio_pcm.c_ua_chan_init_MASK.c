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
struct snd_dbuf {int dummy; } ;
struct pcm_channel {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 void* FUNC0 (void*,struct snd_dbuf*,struct pcm_channel*,int) ; 

__attribute__((used)) static void *
FUNC1(kobj_t obj, void *devinfo, struct snd_dbuf *b, struct pcm_channel *c, int dir)
{
	return (FUNC0(devinfo, b, c, dir));
}