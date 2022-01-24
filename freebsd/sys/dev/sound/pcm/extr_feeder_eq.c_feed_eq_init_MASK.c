#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcm_feeder {struct feed_eq_info* data; TYPE_1__* desc; } ;
struct TYPE_7__ {void* gain; } ;
struct TYPE_6__ {void* gain; } ;
struct feed_eq_info {int channels; int align; int /*<<< orphan*/ * biquad; int /*<<< orphan*/  state; int /*<<< orphan*/  preamp; TYPE_3__ bass; TYPE_2__ treble; int /*<<< orphan*/  rate; } ;
typedef  int /*<<< orphan*/ * feed_eq_t ;
struct TYPE_8__ {scalar_t__ format; int /*<<< orphan*/ * biquad; } ;
struct TYPE_5__ {scalar_t__ in; scalar_t__ out; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FEEDEQ_BIQUAD_TAB_SIZE ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FEEDEQ_PREAMP_DEFAULT ; 
 int /*<<< orphan*/  FEEDEQ_RATE_MIN ; 
 int /*<<< orphan*/  FEEDEQ_UNKNOWN ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 TYPE_4__* feed_eq_biquad_tab ; 
 int FUNC5 (struct feed_eq_info*) ; 
 struct feed_eq_info* FUNC6 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct pcm_feeder *f)
{
	struct feed_eq_info *info;
	feed_eq_t biquad_op;
	int i;

	if (f->desc->in != f->desc->out)
		return (EINVAL);

	biquad_op = NULL;

	for (i = 0; i < FEEDEQ_BIQUAD_TAB_SIZE && biquad_op == NULL; i++) {
		if (FUNC2(f->desc->in) == feed_eq_biquad_tab[i].format)
			biquad_op = feed_eq_biquad_tab[i].biquad;
	}

	if (biquad_op == NULL)
		return (EINVAL);

	info = FUNC6(sizeof(*info), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (info == NULL)
		return (ENOMEM);

	info->channels = FUNC1(f->desc->in);
	info->align = info->channels * FUNC0(f->desc->in);

	info->rate = FEEDEQ_RATE_MIN;
	info->treble.gain = FUNC3(50);
	info->bass.gain = FUNC3(50);
	info->preamp = FUNC4(FEEDEQ_PREAMP_DEFAULT);
	info->state = FEEDEQ_UNKNOWN;

	info->biquad = biquad_op;

	f->data = info;

	return (FUNC5(info));
}