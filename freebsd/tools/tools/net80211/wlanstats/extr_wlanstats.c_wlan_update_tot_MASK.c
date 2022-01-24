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
struct wlanstatfoo_p {int /*<<< orphan*/  ncur; int /*<<< orphan*/  ntotal; int /*<<< orphan*/  cur; int /*<<< orphan*/  total; } ;
struct bsdstat {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(struct bsdstat *sf)
{
	struct wlanstatfoo_p *wf = (struct wlanstatfoo_p *) sf;

	wf->total = wf->cur;
	wf->ntotal = wf->ncur;
}