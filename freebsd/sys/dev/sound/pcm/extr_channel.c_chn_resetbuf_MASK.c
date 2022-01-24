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
struct pcm_channel {scalar_t__ blocks; struct snd_dbuf* bufsoft; struct snd_dbuf* bufhard; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_dbuf*) ; 

void
FUNC1(struct pcm_channel *c)
{
	struct snd_dbuf *b = c->bufhard;
	struct snd_dbuf *bs = c->bufsoft;

	c->blocks = 0;
	FUNC0(b);
	FUNC0(bs);
}