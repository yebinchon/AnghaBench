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
struct pcmchan_syncmember {int id; int /*<<< orphan*/  members; struct pcmchan_syncmember* parent; } ;
struct pcmchan_syncgroup {int id; int /*<<< orphan*/  members; struct pcmchan_syncgroup* parent; } ;
struct pcm_channel {struct pcmchan_syncmember* sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pcmchan_syncmember*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmchan_syncmember*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  pcmchan_syncgroup ; 
 int /*<<< orphan*/  pcmchan_syncmember ; 
 int /*<<< orphan*/  snd_pcm_syncgroups ; 

int
FUNC5(struct pcm_channel *c)
{
	struct pcmchan_syncmember *sm;
	struct pcmchan_syncgroup *sg;
	int sg_id;

	sg_id = 0;

	FUNC1(MA_OWNED);

	if (c->sm != NULL) {
		sm = c->sm;
		sg = sm->parent;
		c->sm = NULL;

		FUNC0(sg != NULL, ("syncmember has null parent"));

		FUNC3(&sg->members, sm, pcmchan_syncmember, link);
		FUNC4(sm, M_DEVBUF);

		if (FUNC2(&sg->members)) {
			FUNC3(&snd_pcm_syncgroups, sg, pcmchan_syncgroup, link);
			sg_id = sg->id;
			FUNC4(sg, M_DEVBUF);
		}
	}

	return sg_id;
}