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
struct cdevsw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cdevsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdevsw_gt_post_list ; 
 int /*<<< orphan*/  d_postfree_list ; 
 int /*<<< orphan*/  devmtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct cdevsw *csw)
{

	FUNC1(&devmtx, MA_OWNED);
	FUNC0(&cdevsw_gt_post_list, csw, d_postfree_list);
}