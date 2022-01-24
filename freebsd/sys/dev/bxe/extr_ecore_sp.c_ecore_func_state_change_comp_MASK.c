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
struct ecore_func_sp_obj {unsigned long pending; int /*<<< orphan*/  next_state; int /*<<< orphan*/  state; } ;
struct bxe_softc {int dummy; } ;
typedef  enum ecore_func_cmd { ____Placeholder_ecore_func_cmd } ecore_func_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  ECORE_F_STATE_MAX ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline int FUNC7(struct bxe_softc *sc,
					       struct ecore_func_sp_obj *o,
					       enum ecore_func_cmd cmd)
{
	unsigned long cur_pending = o->pending;

	if (!FUNC5(cmd, &cur_pending)) {
		FUNC1("Bad MC reply %d for func %d in state %d pending 0x%lx, next_state %d\n",
			  cmd, FUNC2(sc), o->state,
			  cur_pending, o->next_state);
		return ECORE_INVAL;
	}

	FUNC3(sc,
		  "Completing command %d for func %d, setting state to %d\n",
		  cmd, FUNC2(sc), o->next_state);

	o->state = o->next_state;
	o->next_state = ECORE_F_STATE_MAX;

	/* It's important that o->state and o->next_state are
	 * updated before o->pending.
	 */
	FUNC6();

	FUNC0(cmd, &o->pending);
	FUNC4();

	return ECORE_SUCCESS;
}