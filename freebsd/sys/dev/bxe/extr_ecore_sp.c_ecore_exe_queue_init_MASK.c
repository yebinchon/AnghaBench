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
typedef  union ecore_qable_obj {int dummy; } ecore_qable_obj ;
struct ecore_exe_queue_obj {int exe_chunk_len; int /*<<< orphan*/  get; int /*<<< orphan*/  execute; int /*<<< orphan*/  optimize; int /*<<< orphan*/  remove; int /*<<< orphan*/  validate; union ecore_qable_obj* owner; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_comp; int /*<<< orphan*/  exe_queue; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  exe_q_validate ;
typedef  int /*<<< orphan*/  exe_q_remove ;
typedef  int /*<<< orphan*/  exe_q_optimize ;
typedef  int /*<<< orphan*/  exe_q_get ;
typedef  int /*<<< orphan*/  exe_q_execute ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_exe_queue_obj*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bxe_softc*) ; 

__attribute__((used)) static inline void FUNC4(struct bxe_softc *sc,
					struct ecore_exe_queue_obj *o,
					int exe_len,
					union ecore_qable_obj *owner,
					exe_q_validate validate,
					exe_q_remove remove,
					exe_q_optimize optimize,
					exe_q_execute exec,
					exe_q_get get)
{
	FUNC1(o, 0, sizeof(*o));

	FUNC0(&o->exe_queue);
	FUNC0(&o->pending_comp);

	FUNC3(&o->lock, sc);

	o->exe_chunk_len = exe_len;
	o->owner         = owner;

	/* Owner specific callbacks */
	o->validate      = validate;
	o->remove        = remove;
	o->optimize      = optimize;
	o->execute       = exec;
	o->get           = get;

	FUNC2(sc, "Setup the execution queue with the chunk length of %d\n",
		  exe_len);
}