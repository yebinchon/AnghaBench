#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tid_info {int /*<<< orphan*/  tids_in_use; int /*<<< orphan*/  hftid_lock; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct filter_entry {TYPE_1__ fs; } ;
struct adapter {struct tid_info tids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filter_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  link_4t ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct adapter *sc, struct filter_entry *f)
{
	struct tid_info *t = &sc->tids;

	FUNC2(&t->hftid_lock, MA_OWNED);

	FUNC0(f, link_4t);
	FUNC1(&t->tids_in_use, f->fs.type ? 2 : 1);
}