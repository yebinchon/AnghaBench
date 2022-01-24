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
struct pcm_channel {int dummy; } ;
struct feeder_chain_state {TYPE_1__* matrix; int /*<<< orphan*/  afmt; } ;
struct feeder_chain_desc {scalar_t__ afmt_ne; struct feeder_chain_state target; struct feeder_chain_state current; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pcm_channel*,struct feeder_chain_desc*) ; 

__attribute__((used)) static int
FUNC3(struct pcm_channel *c, struct feeder_chain_desc *cdesc)
{
	struct feeder_chain_state otarget;
	int ret;

	if (cdesc->afmt_ne == 0 ||
	    FUNC0(cdesc->current.afmt) == cdesc->afmt_ne)
		return (0);

	otarget = cdesc->target;
	cdesc->target = cdesc->current;
	cdesc->target.afmt = FUNC1(cdesc->afmt_ne,
	    cdesc->current.matrix->channels, cdesc->current.matrix->ext);

	ret = FUNC2(c, cdesc);
	if (ret != 0)
		return (ret);

	cdesc->target = otarget;

	return (0);
}