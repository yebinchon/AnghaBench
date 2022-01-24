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
struct athstatfoo_p {int /*<<< orphan*/  req; } ;
struct athstatfoo {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void 
FUNC2(struct athstatfoo *wf0)
{
	struct athstatfoo_p *wf = (struct athstatfoo_p *) wf0;

	if (FUNC0(&wf->req) < 0)
		FUNC1(-1);
}