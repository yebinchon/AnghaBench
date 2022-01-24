#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct statsblob_tpl {TYPE_2__* mb; TYPE_3__* sb; } ;
struct TYPE_7__ {int /*<<< orphan*/  cursz; } ;
struct TYPE_6__ {void* tplhash; TYPE_1__* voi_meta; int /*<<< orphan*/ * tplname; } ;
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static inline void
FUNC4(struct statsblob_tpl *tpl)
{

	FUNC1();
	tpl->mb->tplhash = FUNC3(tpl->mb->tplname, 0);
	for (int voi_id = 0; voi_id < FUNC0(tpl->sb); voi_id++) {
		if (tpl->mb->voi_meta[voi_id].name != NULL)
			tpl->mb->tplhash = FUNC3(
			    tpl->mb->voi_meta[voi_id].name, tpl->mb->tplhash);
	}
	tpl->mb->tplhash = FUNC2(tpl->sb, tpl->sb->cursz,
	    tpl->mb->tplhash);
}