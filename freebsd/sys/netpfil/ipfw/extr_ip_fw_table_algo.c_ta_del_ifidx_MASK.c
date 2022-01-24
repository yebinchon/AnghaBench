#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tentry_info {int /*<<< orphan*/  value; scalar_t__ paddr; } ;
struct table_info {scalar_t__ data; } ;
struct ta_buf_ifidx {struct ifentry* ife; } ;
struct iftable_cfg {int /*<<< orphan*/  count; int /*<<< orphan*/  ch; int /*<<< orphan*/  ii; scalar_t__ used; int /*<<< orphan*/  main_ptr; } ;
struct ifidx {int dummy; } ;
struct TYPE_5__ {TYPE_1__* iface; } ;
struct ifentry {scalar_t__ linked; int /*<<< orphan*/  value; TYPE_2__ ic; int /*<<< orphan*/  no; } ;
struct TYPE_4__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  compare_ifidx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(void *ta_state, struct table_info *ti, struct tentry_info *tei,
    void *ta_buf, uint32_t *pnum)
{
	struct iftable_cfg *icfg;
	struct ifentry *ife;
	struct ta_buf_ifidx *tb;
	char *ifname;
	uint16_t ifindex;
	int res;

	tb = (struct ta_buf_ifidx *)ta_buf;
	ifname = (char *)tei->paddr;
	icfg = (struct iftable_cfg *)ta_state;

	ife = (struct ifentry *)FUNC5(icfg->ii, 0, ifname);

	if (ife == NULL)
		return (ENOENT);

	if (ife->linked != 0) {
		/* We have to remove item from runtime */
		ifindex = ife->ic.iface->ifindex;

		res = FUNC1(&ifindex, icfg->main_ptr, icfg->used,
		    sizeof(struct ifidx), compare_ifidx);

		FUNC0(res == 1, ("index %d does not exist", ifindex));
		icfg->used--;
		ti->data = icfg->used;
		ife->linked = 0;
	}

	/* Unlink from local list */
	FUNC4(icfg->ii, &ife->no);
	/* Unlink notifier and deref */
	FUNC2(icfg->ch, &ife->ic);
	FUNC3(icfg->ch, &ife->ic);

	icfg->count--;
	tei->value = ife->value;

	tb->ife = ife;
	*pnum = 1;

	return (0);
}