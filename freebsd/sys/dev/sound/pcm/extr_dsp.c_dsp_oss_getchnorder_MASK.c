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
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int EINVAL ; 
 int FUNC2 (struct pcm_channel*,unsigned long long*) ; 

__attribute__((used)) static int
FUNC3(struct pcm_channel *wrch, struct pcm_channel *rdch, unsigned long long *map)
{
	struct pcm_channel *ch;
	int ret;

	ch = (wrch != NULL) ? wrch : rdch;
	if (ch != NULL) {
		FUNC0(ch);
		ret = FUNC2(ch, map);
		FUNC1(ch);
	} else
		ret = EINVAL;

	return (ret);
}