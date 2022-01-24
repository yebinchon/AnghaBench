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
struct ecore_exeq_elem {int /*<<< orphan*/  link; } ;
struct ecore_exe_queue_obj {int (* optimize ) (struct bxe_softc*,int /*<<< orphan*/ ,struct ecore_exeq_elem*) ;int (* validate ) (struct bxe_softc*,int /*<<< orphan*/ ,struct ecore_exeq_elem*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  exe_queue; int /*<<< orphan*/  owner; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*,struct ecore_exeq_elem*) ; 
 int FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ,struct ecore_exeq_elem*) ; 
 int FUNC6 (struct bxe_softc*,int /*<<< orphan*/ ,struct ecore_exeq_elem*) ; 

__attribute__((used)) static inline int FUNC7(struct bxe_softc *sc,
				      struct ecore_exe_queue_obj *o,
				      struct ecore_exeq_elem *elem,
				      bool restore)
{
	int rc;

	FUNC2(&o->lock);

	if (!restore) {
		/* Try to cancel this element queue */
		rc = o->optimize(sc, o->owner, elem);
		if (rc)
			goto free_and_exit;

		/* Check if this request is ok */
		rc = o->validate(sc, o->owner, elem);
		if (rc) {
			FUNC1(sc, "Preamble failed: %d\n", rc);
			goto free_and_exit;
		}
	}

	/* If so, add it to the execution queue */
	FUNC0(&elem->link, &o->exe_queue);

	FUNC3(&o->lock);

	return ECORE_SUCCESS;

free_and_exit:
	FUNC4(sc, elem);

	FUNC3(&o->lock);

	return rc;
}