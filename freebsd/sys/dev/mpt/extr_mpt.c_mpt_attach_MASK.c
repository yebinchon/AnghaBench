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
struct mpt_softc {int mpt_pers_mask; } ;
struct mpt_personality {scalar_t__ (* probe ) (struct mpt_softc*) ;int (* attach ) (struct mpt_softc*) ;int id; int (* enable ) (struct mpt_softc*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int MPT_MAX_PERSONALITIES ; 
 scalar_t__ FUNC0 (struct mpt_personality*,struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpt_softc*) ; 
 struct mpt_personality** mpt_personalities ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mpt_tailq ; 
 scalar_t__ FUNC6 (struct mpt_softc*) ; 
 int FUNC7 (struct mpt_softc*) ; 
 int FUNC8 (struct mpt_softc*) ; 

int
FUNC9(struct mpt_softc *mpt)
{
	struct mpt_personality *pers;
	int i;
	int error;

	FUNC2(mpt);
	FUNC3(mpt);

	FUNC1(&mpt_tailq, mpt, links);
	for (i = 0; i < MPT_MAX_PERSONALITIES; i++) {
		pers = mpt_personalities[i];
		if (pers == NULL) {
			continue;
		}
		if (pers->probe(mpt) == 0) {
			error = pers->attach(mpt);
			if (error != 0) {
				FUNC4(mpt);
				return (error);
			}
			mpt->mpt_pers_mask |= (0x1 << pers->id);
			pers->use_count++;
		}
	}

	/*
	 * Now that we've attached everything, do the enable function
	 * for all of the personalities. This allows the personalities
	 * to do setups that are appropriate for them prior to enabling
	 * any ports.
	 */
	for (i = 0; i < MPT_MAX_PERSONALITIES; i++) {
		pers = mpt_personalities[i];
		if (pers != NULL  && FUNC0(pers, mpt) != 0) {
			error = pers->enable(mpt);
			if (error != 0) {
				FUNC5(mpt, "personality %s attached but would"
				    " not enable (%d)\n", pers->name, error);
				FUNC4(mpt);
				return (error);
			}
		}
	}
	return (0);
}