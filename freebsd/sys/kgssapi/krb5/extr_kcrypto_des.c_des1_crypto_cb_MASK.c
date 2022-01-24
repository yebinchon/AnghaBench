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
struct des1_state {int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_session; } ;
struct cryptop {int crp_etype; int crp_flags; scalar_t__ crp_opaque; } ;

/* Variables and functions */
 int CRYPTOCAP_F_SYNC ; 
 int CRYPTO_F_DONE ; 
 int EAGAIN ; 
 int FUNC0 (struct cryptop*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cryptop*) ; 

__attribute__((used)) static int
FUNC5(struct cryptop *crp)
{
	int error;
	struct des1_state *ds = (struct des1_state *) crp->crp_opaque;
	
	if (FUNC1(ds->ds_session) & CRYPTOCAP_F_SYNC)
		return (0);

	error = crp->crp_etype;
	if (error == EAGAIN)
		error = FUNC0(crp);
	FUNC2(&ds->ds_lock);
	if (error || (crp->crp_flags & CRYPTO_F_DONE))
		FUNC4(crp);
	FUNC3(&ds->ds_lock);

	return (0);
}