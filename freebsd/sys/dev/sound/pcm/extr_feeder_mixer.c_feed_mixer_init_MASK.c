#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcm_feeder {TYPE_1__* desc; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ format; } ;
struct TYPE_3__ {scalar_t__ in; scalar_t__ out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FEEDMIXER_TAB_SIZE ; 
 TYPE_2__* feed_mixer_info_tab ; 

__attribute__((used)) static int
FUNC3(struct pcm_feeder *f)
{
	int i;

	if (f->desc->in != f->desc->out)
		return (EINVAL);

	for (i = 0; i < FEEDMIXER_TAB_SIZE; i++) {
		if (FUNC1(f->desc->in) ==
		    feed_mixer_info_tab[i].format) {
		    	f->data =
			    FUNC2(i, FUNC0(f->desc->in));
			return (0);
		}
	}

	return (EINVAL);
}