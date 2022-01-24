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
typedef  void* uint32_t ;
struct sctp_association {void* highest_tsn_inside_nr_map; void* highest_tsn_inside_map; int /*<<< orphan*/  mapping_array_base_tsn; int /*<<< orphan*/  mapping_array; int /*<<< orphan*/  nr_mapping_array; void* cumulative_tsn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  sctp_do_drain ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_association*) ; 

__attribute__((used)) static void
FUNC10(struct sctp_association *asoc, uint32_t tsn)
{
	uint32_t gap, i, cumackp1;
	int fnd = 0;
	int in_r = 0, in_nr = 0;

	if (FUNC0(sctp_do_drain) == 0) {
		return;
	}
	cumackp1 = asoc->cumulative_tsn + 1;
	if (FUNC6(cumackp1, tsn)) {
		/*
		 * this tsn is behind the cum ack and thus we don't need to
		 * worry about it being moved from one to the other.
		 */
		return;
	}
	FUNC1(gap, tsn, asoc->mapping_array_base_tsn);
	in_r = FUNC2(asoc->mapping_array, gap);
	in_nr = FUNC2(asoc->nr_mapping_array, gap);
	if ((in_r == 0) && (in_nr == 0)) {
#ifdef INVARIANTS
		panic("Things are really messed up now");
#else
		FUNC3("gap:%x tsn:%x\n", gap, tsn);
		FUNC9(asoc);
#endif
	}
	if (in_nr == 0)
		FUNC4(asoc->nr_mapping_array, gap);
	if (in_r)
		FUNC7(asoc->mapping_array, gap);
	if (FUNC6(tsn, asoc->highest_tsn_inside_nr_map)) {
		asoc->highest_tsn_inside_nr_map = tsn;
	}
	if (tsn == asoc->highest_tsn_inside_map) {
		/* We must back down to see what the new highest is */
		for (i = tsn - 1; FUNC5(i, asoc->mapping_array_base_tsn); i--) {
			FUNC1(gap, i, asoc->mapping_array_base_tsn);
			if (FUNC2(asoc->mapping_array, gap)) {
				asoc->highest_tsn_inside_map = i;
				fnd = 1;
				break;
			}
		}
		if (!fnd) {
			asoc->highest_tsn_inside_map = asoc->mapping_array_base_tsn - 1;
		}
	}
}