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
struct thread {int dummy; } ;
struct keyent_t {scalar_t__* map; int spcl; scalar_t__ flgs; } ;

/* Variables and functions */
 int NUM_STATES ; 
 int /*<<< orphan*/  PRIV_KEYBOARD ; 
 int /*<<< orphan*/  FUNC0 (struct keyent_t*,int) ; 
 int keymap_restrict_change ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct keyent_t *oldkey, struct keyent_t *newkey, struct thread *td)
{
	int i;

	/* Low keymap_restrict_change means any changes are OK. */
	if (keymap_restrict_change <= 0)
		return (0);

	/* High keymap_restrict_change means only root can change the keymap. */
	if (keymap_restrict_change >= 2) {
		for (i = 0; i < NUM_STATES; i++)
			if (oldkey->map[i] != newkey->map[i])
				return FUNC1(td, PRIV_KEYBOARD);
		if (oldkey->spcl != newkey->spcl)
			return FUNC1(td, PRIV_KEYBOARD);
		if (oldkey->flgs != newkey->flgs)
			return FUNC1(td, PRIV_KEYBOARD);
		return (0);
	}

	/* Otherwise we have to see if any special keys are being changed. */
	for (i = 0; i < NUM_STATES; i++) {
		/*
		 * If either the oldkey or the newkey action is restricted
		 * then we must make sure that the action doesn't change.
		 */
		if (!FUNC0(oldkey, i) && !FUNC0(newkey, i))
			continue;
		if ((oldkey->spcl & (0x80 >> i)) == (newkey->spcl & (0x80 >> i))
		    && oldkey->map[i] == newkey->map[i])
			continue;
		return FUNC1(td, PRIV_KEYBOARD);
	}

	return (0);
}