#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct opcode_obj_rewrite {struct named_object* (* find_bykidx ) (struct ip_fw_chain*,scalar_t__) ;} ;
struct obj_idx {scalar_t__ kidx; int off; } ;
struct named_object {int /*<<< orphan*/  refcnt; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opcode; } ;
typedef  TYPE_1__ ipfw_insn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct opcode_obj_rewrite* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct named_object* FUNC3 (struct ip_fw_chain*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct ip_fw_chain *ch, ipfw_insn *cmd, struct obj_idx *oib,
    struct obj_idx *end)
{
	struct opcode_obj_rewrite *rw;
	struct named_object *no;
	struct obj_idx *p;

	FUNC0(ch);

	for (p = oib; p < end; p++) {
		if (p->kidx == 0)
			continue;

		rw = FUNC2(cmd + p->off, NULL, NULL);
		FUNC1(rw != NULL, ("Unable to find handler for op %d",
		    (cmd + p->off)->opcode));

		/* Find & unref by existing idx */
		no = rw->find_bykidx(ch, p->kidx);
		FUNC1(no != NULL, ("Ref'd object %d disappeared", p->kidx));
		no->refcnt--;
	}
}