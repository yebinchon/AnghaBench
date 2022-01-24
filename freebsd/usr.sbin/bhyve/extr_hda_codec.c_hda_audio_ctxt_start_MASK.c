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
struct hda_audio_ctxt {int run; int (* do_setup ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  mtx; int /*<<< orphan*/  cond; int /*<<< orphan*/  priv; struct hda_audio_ctxt* started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_audio_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct hda_audio_ctxt *actx)
{
	int err = 0;

	FUNC0(actx);
	FUNC0(actx->started);

	/* The stream is supposed to be stopped */
	if (actx->run)
		return (-1);

	FUNC2(&actx->mtx);
	err = (* actx->do_setup)(actx->priv);
	if (!err) {
		actx->run = 1;
		FUNC1(&actx->cond);
	}
	FUNC3(&actx->mtx);

	return (err);
}