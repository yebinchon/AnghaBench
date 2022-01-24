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
struct lz_range_decoder {int dummy; } ;
struct lz_len_model {int /*<<< orphan*/  bm_high; int /*<<< orphan*/ * bm_mid; int /*<<< orphan*/  choice2; int /*<<< orphan*/ * bm_low; int /*<<< orphan*/  choice1; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIGH_BITS ; 
 int /*<<< orphan*/  LOW_BITS ; 
 int LOW_SYMBOLS ; 
 int /*<<< orphan*/  MID_BITS ; 
 int MID_SYMBOLS ; 
 scalar_t__ FUNC0 (struct lz_range_decoder*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lz_range_decoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned
FUNC2(struct lz_range_decoder *rd, struct lz_len_model *lm,
    int pos_state)
{
	if (FUNC0(rd, &lm->choice1) == 0)
		return FUNC1(rd, lm->bm_low[pos_state], LOW_BITS);

	if (FUNC0(rd, &lm->choice2) == 0) {
		return LOW_SYMBOLS +
		    FUNC1(rd, lm->bm_mid[pos_state], MID_BITS);
	}

	return LOW_SYMBOLS + MID_SYMBOLS +
           FUNC1(rd, lm->bm_high, HIGH_BITS);
}