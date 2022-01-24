#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* version; int* length; } ;
struct TYPE_8__ {TYPE_1__ h; int /*<<< orphan*/  altname; int /*<<< orphan*/ * flags; } ;
struct TYPE_9__ {TYPE_2__ NM; } ;
struct TYPE_10__ {TYPE_3__ rr_entry; } ;
struct ISO_SUSP_ATTRIBUTES {TYPE_4__ attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  head; } ;
typedef  TYPE_5__ cd9660node ;

/* Variables and functions */
 int /*<<< orphan*/  RRIP_NM_FLAGS_CONTINUE ; 
 int /*<<< orphan*/  RRIP_NM_FLAGS_NONE ; 
 int /*<<< orphan*/  SUSP_ENTRY_RRIP_NM ; 
 int /*<<< orphan*/  SUSP_LOC_ENTRY ; 
 int /*<<< orphan*/  SUSP_TYPE_RRIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ISO_SUSP_ATTRIBUTES*,int /*<<< orphan*/ ) ; 
 struct ISO_SUSP_ATTRIBUTES* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  rr_ll ; 
 int FUNC3 (char const*) ; 

void
FUNC4(cd9660node *node, const char *name)
{
	int working,len;
	const char *p;
	struct ISO_SUSP_ATTRIBUTES *r;

	/*
	 * Each NM record has 254 byes to work with. This means that
	 * the name data itself only has 249 bytes to work with. So, a
	 * name with 251 characters would require two nm records.
	 */
	p = name;
	working = 1;
	while (working) {
		r = FUNC1(SUSP_TYPE_RRIP,
		    SUSP_ENTRY_RRIP_NM, "NM", SUSP_LOC_ENTRY);
		r->attr.rr_entry.NM.h.version[0] = 1;
		r->attr.rr_entry.NM.flags[0] = RRIP_NM_FLAGS_NONE;
		len = FUNC3(p);

		if (len > 249) {
			len = 249;
			r->attr.rr_entry.NM.flags[0] = RRIP_NM_FLAGS_CONTINUE;
		} else {
			working = 0;
		}
		FUNC2(r->attr.rr_entry.NM.altname, p, len);
		r->attr.rr_entry.NM.h.length[0] = 5 + len;

		FUNC0(&node->head, r, rr_ll);

		p += len;
	}
}