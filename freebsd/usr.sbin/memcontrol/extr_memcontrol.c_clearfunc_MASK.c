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
struct mem_range_op {struct mem_range_desc* mo_desc; void** mo_arg; } ;
struct mem_range_desc {scalar_t__ mr_base; scalar_t__ mr_len; int mr_flags; int /*<<< orphan*/  mr_owner; } ;

/* Variables and functions */
 int MDF_ACTIVE ; 
 int MDF_FIXACTIVE ; 
 int /*<<< orphan*/  MEMRANGE_SET ; 
 void* MEMRANGE_SET_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct mem_range_op*) ; 
 struct mem_range_desc* FUNC4 (int,int*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 void* FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static void
FUNC10(int memfd, int argc, char *argv[])
{
    struct mem_range_desc	mrd, *mrdp;
    struct mem_range_op		mro;
    int				i, nd;
    int				ch;
    char			*ep, *owner;

    mrd.mr_base = 0;
    mrd.mr_len = 0;
    owner = NULL;
    while ((ch = FUNC1(argc, argv, "b:l:o:")) != -1)
	switch(ch) {
	case 'b':
	    mrd.mr_base = FUNC8(optarg, &ep, 0);
	    if ((ep == optarg) || (*ep != 0))
		FUNC2("clear");
	    break;
	case 'l':
	    mrd.mr_len = FUNC8(optarg, &ep, 0);
	    if ((ep == optarg) || (*ep != 0))
		FUNC2("clear");
	    break;
	case 'o':
	    if ((*optarg == 0) || (FUNC7(optarg) > 7))
		FUNC2("clear");
	    owner = FUNC6(optarg);
	    break;
	    
	case '?':
	default:
	    FUNC2("clear");
	}

    if (owner != NULL) {
	/* clear-by-owner */
	if ((mrd.mr_base != 0) || (mrd.mr_len != 0))
	    FUNC2("clear");

	mrdp = FUNC4(memfd, &nd);
	mro.mo_arg[0] = MEMRANGE_SET_REMOVE;
	for (i = 0; i < nd; i++) {
	    if (!FUNC5(owner, mrdp[i].mr_owner) && 
		(mrdp[i].mr_flags & MDF_ACTIVE) &&
		!(mrdp[i].mr_flags & MDF_FIXACTIVE)) {
		
		mro.mo_desc = mrdp + i;
		if (FUNC3(memfd, MEMRANGE_SET, &mro))
		    FUNC9("couldn't clear range owned by '%s'", owner);
	    }
	}
    } else if (mrd.mr_len != 0) {
	/* clear-by-base/len */
	mro.mo_arg[0] = MEMRANGE_SET_REMOVE;
	mro.mo_desc = &mrd;
	if (FUNC3(memfd, MEMRANGE_SET, &mro))
	    FUNC0(1, "couldn't clear range");
    } else {
	FUNC2("clear");
    }
}