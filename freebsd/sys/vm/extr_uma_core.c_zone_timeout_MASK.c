#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
typedef  TYPE_2__* uma_keg_t ;
typedef  int u_int ;
struct uma_hash {int uh_hashsize; } ;
struct TYPE_9__ {int uk_flags; int uk_pages; int uk_ppera; struct uma_hash uk_hash; } ;
struct TYPE_8__ {int uz_flags; int /*<<< orphan*/ * uz_domain; TYPE_2__* uz_keg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int UMA_ZFLAG_CACHE ; 
 int UMA_ZONE_HASH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct uma_hash*,int) ; 
 scalar_t__ FUNC6 (struct uma_hash*,struct uma_hash*) ; 
 int /*<<< orphan*/  FUNC7 (struct uma_hash*) ; 
 int vm_ndomains ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(uma_zone_t zone)
{
	uma_keg_t keg;
	u_int slabs;

	if ((zone->uz_flags & UMA_ZFLAG_CACHE) != 0)
		goto update_wss;

	keg = zone->uz_keg;
	FUNC0(keg);
	/*
	 * Expand the keg hash table.
	 *
	 * This is done if the number of slabs is larger than the hash size.
	 * What I'm trying to do here is completely reduce collisions.  This
	 * may be a little aggressive.  Should I allow for two collisions max?
	 */
	if (keg->uk_flags & UMA_ZONE_HASH &&
	    (slabs = keg->uk_pages / keg->uk_ppera) >
	     keg->uk_hash.uh_hashsize) {
		struct uma_hash newhash;
		struct uma_hash oldhash;
		int ret;

		/*
		 * This is so involved because allocating and freeing
		 * while the keg lock is held will lead to deadlock.
		 * I have to do everything in stages and check for
		 * races.
		 */
		FUNC1(keg);
		ret = FUNC5(&newhash, 1 << FUNC4(slabs));
		FUNC0(keg);
		if (ret) {
			if (FUNC6(&keg->uk_hash, &newhash)) {
				oldhash = keg->uk_hash;
				keg->uk_hash = newhash;
			} else
				oldhash = newhash;

			FUNC1(keg);
			FUNC7(&oldhash);
			return;
		}
	}
	FUNC1(keg);

update_wss:
	FUNC2(zone);
	for (int i = 0; i < vm_ndomains; i++)
		FUNC8(&zone->uz_domain[i]);
	FUNC3(zone);
}