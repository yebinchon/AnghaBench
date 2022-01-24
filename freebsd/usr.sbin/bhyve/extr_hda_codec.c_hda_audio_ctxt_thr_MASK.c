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
struct hda_audio_ctxt {int /*<<< orphan*/  mtx; int /*<<< orphan*/  priv; int /*<<< orphan*/  (* do_transfer ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  cond; int /*<<< orphan*/  run; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC6(void *arg)
{
	struct hda_audio_ctxt *actx = arg;

	FUNC0("Start Thread: %s\n", actx->name);

	FUNC3(&actx->mtx);
	while (1) {
		while (!actx->run)
			FUNC1(&actx->cond, &actx->mtx);

		actx->do_transfer(actx->priv);
	}
	FUNC4(&actx->mtx);

	FUNC2(NULL);
	return (NULL);
}