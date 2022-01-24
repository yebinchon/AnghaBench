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
struct npestatfoo_p {int /*<<< orphan*/  oid; int /*<<< orphan*/  mib; } ;
struct npestatfoo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static void
FUNC3(struct npestatfoo *wf0, const char *ifname)
{
	struct npestatfoo_p *wf = (struct npestatfoo_p *) wf0;
	size_t len;

	FUNC1(wf->oid, sizeof(wf->oid), "dev.npe.%s.stats", ifname+3);
	len = 4;
	if (FUNC2(wf->oid, wf->mib, &len) < 0)
		FUNC0(1, "sysctlnametomib: %s", wf->oid);
}