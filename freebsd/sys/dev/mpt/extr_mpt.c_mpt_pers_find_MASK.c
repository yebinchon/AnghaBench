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
typedef  int u_int ;
struct mpt_softc {int mpt_pers_mask; } ;
struct mpt_personality {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MPT_MAX_PERSONALITIES ; 
 struct mpt_personality** mpt_personalities ; 

__attribute__((used)) static __inline struct mpt_personality *
FUNC1(struct mpt_softc *mpt, u_int start_at)
{
	FUNC0(start_at <= MPT_MAX_PERSONALITIES,
		("mpt_pers_find: starting position out of range"));

	while (start_at < MPT_MAX_PERSONALITIES
	    && (mpt->mpt_pers_mask & (0x1 << start_at)) == 0) {
		start_at++;
	}
	return (mpt_personalities[start_at]);
}