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
typedef  int uint32_t ;
struct uaudio_chan {int /*<<< orphan*/  buf; int /*<<< orphan*/  pcm_buf; int /*<<< orphan*/  set_alt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct uaudio_chan*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct uaudio_chan *ch, uint32_t blocksize)
{
	uint32_t temp = 2 * FUNC1(ch, ch->set_alt);
	FUNC0(ch->pcm_buf, ch->buf, temp);
	return (temp / 2);
}