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
struct ecore_hwfn {int dummy; } ;
struct ecore_bmap {int /*<<< orphan*/  name; int /*<<< orphan*/  max_count; int /*<<< orphan*/  bitmap; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ECORE_IWARP_MAX_CID_CLEAN_TIME ; 
 int ECORE_IWARP_MAX_NO_PROGRESS_CNT ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC3(struct ecore_hwfn *p_hwfn,
				 struct ecore_bmap *bmap)
{
	int prev_weight = 0;
	int wait_count = 0;
	int weight = 0;

	weight = FUNC1(bmap->bitmap, bmap->max_count);
	prev_weight = weight;

	while (weight) {
		FUNC2(ECORE_IWARP_MAX_CID_CLEAN_TIME);

		weight = FUNC1(bmap->bitmap, bmap->max_count);

		if (prev_weight == weight) {
			wait_count++;
		} else {
			prev_weight = weight;
			wait_count = 0;
		}

		if (wait_count > ECORE_IWARP_MAX_NO_PROGRESS_CNT) {
			FUNC0(p_hwfn, false,
				  "%s bitmap wait timed out (%d cids pending)\n",
				  bmap->name, weight);
			return ECORE_TIMEOUT;
		}
	}
	return ECORE_SUCCESS;
}