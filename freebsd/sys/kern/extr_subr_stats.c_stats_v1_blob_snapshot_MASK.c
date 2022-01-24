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
struct statsblobv1 {scalar_t__ abi; int /*<<< orphan*/  lastrst; } ;

/* Variables and functions */
 int EINVAL ; 
 int SB_CLONE_RSTSRC ; 
 scalar_t__ STATS_ABI_V1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct statsblobv1**,size_t,struct statsblobv1*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct statsblobv1*) ; 
 int /*<<< orphan*/  FUNC3 (struct statsblobv1*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stats_v1_icb_reset_voistat ; 

int
FUNC4(struct statsblobv1 **dst, size_t dstmaxsz,
    struct statsblobv1 *src, uint32_t flags)
{
	int error;

	if (src != NULL && src->abi == STATS_ABI_V1) {
		error = FUNC1(dst, dstmaxsz, src, flags);
		if (!error) {
			if (flags & SB_CLONE_RSTSRC) {
				FUNC3(src,
				    stats_v1_icb_reset_voistat, NULL, 0);
				src->lastrst = FUNC0();
			}
			FUNC2(*dst);
		}
	} else
		error = EINVAL;

	return (error);
}