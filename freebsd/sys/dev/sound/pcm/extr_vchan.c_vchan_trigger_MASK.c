#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vchan_info {int trigger; struct pcm_channel* channel; } ;
struct pcm_channel {struct pcm_channel* parentchannel; } ;
typedef  int /*<<< orphan*/  kobj_t ;
struct TYPE_2__ {int /*<<< orphan*/  busy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*,struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 int /*<<< orphan*/  CHN_N_TRIGGER ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*,struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcm_channel*) ; 
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 scalar_t__ FUNC6 (struct pcm_channel*) ; 
 TYPE_1__ children ; 
 int FUNC7 (struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pcm_channel*) ; 

__attribute__((used)) static int
FUNC9(kobj_t obj, void *data, int go)
{
	struct vchan_info *info;
	struct pcm_channel *c, *p;
	int ret, otrigger;

	info = data;

	if (!FUNC5(go) || go == info->trigger)
		return (0);

	c = info->channel;
	p = c->parentchannel;
	otrigger = info->trigger;
	info->trigger = go;

	FUNC2(c);

	FUNC4(c);
	FUNC1(p);

	switch (go) {
	case PCMTRIG_START:
		if (otrigger != PCMTRIG_START)
			FUNC0(p, c, children.busy);
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		if (otrigger == PCMTRIG_START)
			FUNC3(p, c, children.busy);
		break;
	default:
		break;
	}

	ret = FUNC7(p, CHN_N_TRIGGER);

	FUNC1(c);

	if (ret == 0 && go == PCMTRIG_START && FUNC6(c))
		ret = FUNC8(c);

	FUNC4(c);
	FUNC4(p);
	FUNC1(c);

	return (ret);
}