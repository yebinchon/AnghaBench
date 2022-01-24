#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {TYPE_1__* rcb; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
struct TYPE_12__ {int max_elem; int lockcreated; int /*<<< orphan*/ * elem_array; int /*<<< orphan*/  lockname; int /*<<< orphan*/  lock; scalar_t__ tail; scalar_t__ head; scalar_t__ num_elem; } ;
typedef  TYPE_3__ pqi_taglist_t ;
struct TYPE_10__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INVALID_ELEM ; 
 int /*<<< orphan*/  LOCKNAME_SIZE ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 

int FUNC7(pqisrc_softstate_t *softs, pqi_taglist_t *taglist,
				uint32_t max_elem)
{
	int ret = PQI_STATUS_SUCCESS;
	int i = 0;
	
	FUNC1("IN\n");

	taglist->max_elem = max_elem;
	taglist->num_elem = 0;
	taglist->head = 0;
	taglist->tail = 0;
	taglist->elem_array = FUNC3(softs,
			(max_elem * sizeof(uint32_t))); 
	if (!(taglist->elem_array)) {
		FUNC1("Unable to allocate memory for taglist\n");
		ret = PQI_STATUS_FAILURE;
		goto err_out;
	}
 
    	FUNC5(taglist->lockname, "tag_lock",  LOCKNAME_SIZE);
    	ret = FUNC2(softs, &taglist->lock, taglist->lockname);
    	if(ret){
        	FUNC0("tag lock initialization failed\n");
        	taglist->lockcreated=false;
        	goto err_lock;
	}
    	taglist->lockcreated = true;
    
	/* indices 1 to max_elem are considered as valid tags */
	for (i=1; i <= max_elem; i++) {
		softs->rcb[i].tag = INVALID_ELEM;
		FUNC6(taglist, i);
	}
	
	FUNC1("OUT\n");
	return ret;

err_lock:
    FUNC4(softs, (char *)taglist->elem_array, 
        (taglist->max_elem * sizeof(uint32_t)));
	taglist->elem_array = NULL;
err_out:
	FUNC1("OUT failed\n");
	return ret;
}