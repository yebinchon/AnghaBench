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
struct npestatfoo_p {int /*<<< orphan*/  cur; } ;
struct bsdstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct npestatfoo_p*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct bsdstat *sf)
{
	struct npestatfoo_p *wf = (struct npestatfoo_p *) sf;

	FUNC0(wf, &wf->cur);
}