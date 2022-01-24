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
typedef  int uint32_t ;
struct dmar_unit {int inv_waitd_seq; int /*<<< orphan*/  inv_waitd_gen; } ;
struct dmar_qi_genseq {int seq; int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_unit*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,struct dmar_qi_genseq*) ; 

__attribute__((used)) static void
FUNC7(struct dmar_unit *unit, struct dmar_qi_genseq *pseq,
    bool emit_wait)
{
	struct dmar_qi_genseq gsec;
	uint32_t seq;

	FUNC1(pseq != NULL, ("wait descriptor with no place for seq"));
	FUNC0(unit);
	if (unit->inv_waitd_seq == 0xffffffff) {
		gsec.gen = unit->inv_waitd_gen;
		gsec.seq = unit->inv_waitd_seq;
		FUNC5(unit, 1);
		FUNC4(unit, gsec.seq, false, true, false);
		FUNC3(unit);
		while (!FUNC6(unit, &gsec))
			FUNC2();
		unit->inv_waitd_gen++;
		unit->inv_waitd_seq = 1;
	}
	seq = unit->inv_waitd_seq++;
	pseq->gen = unit->inv_waitd_gen;
	pseq->seq = seq;
	if (emit_wait) {
		FUNC5(unit, 1);
		FUNC4(unit, seq, true, true, false);
	}
}