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
struct bsdstat {int dummy; } ;
struct athaggrstatfoo_p {int /*<<< orphan*/  total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct athaggrstatfoo_p*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct bsdstat *sf)
{
	struct athaggrstatfoo_p *wf = (struct athaggrstatfoo_p *) sf;

	FUNC0(wf, &wf->total);
}