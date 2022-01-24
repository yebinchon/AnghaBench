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
struct iavf_sc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_FLAG_AQ_CONFIG_RSS_KEY ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_CONFIG_RSS_LUT ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_SET_RSS_HENA ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_sc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct iavf_sc *sc)
{
	FUNC0(sc, IAVF_FLAG_AQ_CONFIG_RSS_KEY);

	FUNC0(sc, IAVF_FLAG_AQ_SET_RSS_HENA);

	FUNC0(sc, IAVF_FLAG_AQ_CONFIG_RSS_LUT);
}