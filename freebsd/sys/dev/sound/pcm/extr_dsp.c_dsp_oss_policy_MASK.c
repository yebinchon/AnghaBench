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
struct pcm_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int CHN_POLICY_MAX ; 
 int CHN_POLICY_MIN ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int EIO ; 
 int FUNC2 (struct pcm_channel*,int) ; 

__attribute__((used)) static int
FUNC3(struct pcm_channel *wrch, struct pcm_channel *rdch, int policy)
{
	int ret;

	if (policy < CHN_POLICY_MIN || policy > CHN_POLICY_MAX)
		return (EIO);

	/* Default: success */
	ret = 0;

	if (rdch) {
		FUNC0(rdch);
		ret = FUNC2(rdch, policy);
		FUNC1(rdch);
	}

	if (wrch && ret == 0) {
		FUNC0(wrch);
		ret = FUNC2(wrch, policy);
		FUNC1(wrch);
	}

	if (ret)
		ret = EIO;

	return (ret);
}