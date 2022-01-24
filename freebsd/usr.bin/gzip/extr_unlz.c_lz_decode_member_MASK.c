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
typedef  int uint8_t ;
struct lz_range_decoder {int dummy; } ;
struct lz_len_model {int dummy; } ;
struct lz_decoder {unsigned int dict_size; unsigned int pos; int /*<<< orphan*/  wrapped; int /*<<< orphan*/  fin; struct lz_range_decoder rdec; } ;

/* Variables and functions */
 int const DIS_ALIGN_BITS ; 
 int DIS_ALIGN_SIZE ; 
 unsigned int const DIS_MODEL_END ; 
 unsigned int DIS_MODEL_START ; 
 int DIS_SLOT_BITS ; 
 int LITERAL_CONTEXT_BITS ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int**) ; 
 int /*<<< orphan*/  FUNC2 (struct lz_len_model) ; 
 int LZ_STATES ; 
 int FUNC3 (int,scalar_t__) ; 
 int MIN_MATCH_LEN ; 
 int /*<<< orphan*/  MODELED_DISTANCES ; 
 int POS_STATES ; 
 int POS_STATE_MASK ; 
 scalar_t__ STATES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lz_decoder*) ; 
 int FUNC7 (struct lz_decoder*) ; 
 void* FUNC8 (struct lz_decoder*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct lz_decoder*,void*) ; 
 int const FUNC10 (struct lz_range_decoder*,int const) ; 
 scalar_t__ FUNC11 (struct lz_range_decoder*,int*) ; 
 int FUNC12 (struct lz_range_decoder*,struct lz_len_model*,int const) ; 
 void* FUNC13 (struct lz_range_decoder*,int*,int) ; 
 void* FUNC14 (struct lz_range_decoder*,int*,int) ; 
 scalar_t__ FUNC15 (struct lz_range_decoder*,int*,int const) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static bool
FUNC21(struct lz_decoder *lz)
{
	int bm_literal[1 << LITERAL_CONTEXT_BITS][0x300];
	int bm_match[LZ_STATES][POS_STATES];
	int bm_rep[4][LZ_STATES];
	int bm_len[LZ_STATES][POS_STATES];
	int bm_dis_slot[LZ_STATES][1 << DIS_SLOT_BITS];
	int bm_dis[MODELED_DISTANCES - DIS_MODEL_END + 1];
	int bm_align[DIS_ALIGN_SIZE];

	FUNC1(bm_literal);
	FUNC1(bm_match);
	FUNC1(bm_rep);
	FUNC1(bm_len);
	FUNC1(bm_dis_slot);
	FUNC0(bm_dis);
	FUNC0(bm_align);

	struct lz_len_model match_len_model;
	struct lz_len_model rep_len_model;

	FUNC2(match_len_model);
	FUNC2(rep_len_model);

	struct lz_range_decoder *rd = &lz->rdec;
	unsigned rep[4] = { 0 };


	int state = 0;

	while (!FUNC4(lz->fin) && !FUNC5(lz->fin)) {
		const int pos_state = FUNC7(lz) & POS_STATE_MASK;
		// bit 1
		if (FUNC11(rd, &bm_match[state][pos_state]) == 0) {
			const uint8_t prev_byte = FUNC8(lz, 0);
			const int literal_state =
			    prev_byte >> (8 - LITERAL_CONTEXT_BITS);
			int *bm = bm_literal[literal_state];
			if (FUNC20(state))
				FUNC9(lz, FUNC14(rd, bm, 8));
			else {
				int peek = FUNC8(lz, rep[0]);
				FUNC9(lz, FUNC13(rd, bm, peek));
			}
			state = FUNC16(state);
			continue;
		}
		int len;
		// bit 2
		if (FUNC11(rd, &bm_rep[0][state]) != 0) {
			// bit 3
			if (FUNC11(rd, &bm_rep[1][state]) == 0) {
				// bit 4
				if (FUNC11(rd,
				    &bm_len[state][pos_state]) == 0)
				{
					state = FUNC19(state);
					FUNC9(lz, FUNC8(lz, rep[0]));
					continue;
				}
			} else {
				unsigned distance;
				// bit 4
				if (FUNC11(rd, &bm_rep[2][state])
				    == 0)
					distance = rep[1];
				else {
					// bit 5
					if (FUNC11(rd,
					    &bm_rep[3][state]) == 0)
						distance = rep[2];
					else {
						distance = rep[3];
						rep[3] = rep[2];
					}
					rep[2] = rep[1];
				}
				rep[1] = rep[0];
				rep[0] = distance;
			}
			state = FUNC18(state);
			len = MIN_MATCH_LEN +
			    FUNC12(rd, &rep_len_model, pos_state);
		} else {
			rep[3] = rep[2]; rep[2] = rep[1]; rep[1] = rep[0];
			len = MIN_MATCH_LEN +
			    FUNC12(rd, &match_len_model, pos_state);
			const int len_state =
			    FUNC3(len - MIN_MATCH_LEN, STATES - 1);
			rep[0] = FUNC14(rd, bm_dis_slot[len_state],
			    DIS_SLOT_BITS);
			if (rep[0] >= DIS_MODEL_START) {
				const unsigned dis_slot = rep[0];
				const int direct_bits = (dis_slot >> 1) - 1;
			        rep[0] = (2 | (dis_slot & 1)) << direct_bits;
				if (dis_slot < DIS_MODEL_END)
					rep[0] += FUNC15(rd,
					    &bm_dis[rep[0] - dis_slot],
                                            direct_bits);
				else {
					rep[0] += FUNC10(rd, direct_bits
					    - DIS_ALIGN_BITS) << DIS_ALIGN_BITS;
					rep[0] += FUNC15(rd,
					    bm_align, DIS_ALIGN_BITS);
					if (rep[0] == 0xFFFFFFFFU) {
						FUNC6(lz);
						return len == MIN_MATCH_LEN;
					}
				}
			}
			state = FUNC17(state);
			if (rep[0] >= lz->dict_size ||
			    (rep[0] >= lz->pos && !lz->wrapped)) {
				FUNC6(lz);
				return false;
			}
		}
		for (int i = 0; i < len; i++)
			FUNC9(lz, FUNC8(lz, rep[0]));
    	}
	FUNC6(lz);
	return false;
}