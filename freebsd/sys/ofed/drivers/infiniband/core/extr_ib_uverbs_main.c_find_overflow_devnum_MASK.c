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

/* Variables and functions */
 int IB_UVERBS_MAX_DEVICES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  overflow_maj ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	if (!overflow_maj) {
		ret = FUNC0(&overflow_maj, 0, IB_UVERBS_MAX_DEVICES,
					  "infiniband_verbs");
		if (ret) {
			FUNC2("user_verbs: couldn't register dynamic device number\n");
			return ret;
		}
	}

	ret = FUNC1(overflow_map, IB_UVERBS_MAX_DEVICES);
	if (ret >= IB_UVERBS_MAX_DEVICES)
		return -1;

	return ret;
}