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
struct mem_range_op {scalar_t__* mo_arg; struct mem_range_desc* mo_desc; } ;
struct mem_range_desc {scalar_t__ mr_len; int /*<<< orphan*/  mr_flags; int /*<<< orphan*/  mr_owner; void* mr_base; } ;
struct TYPE_2__ {int kind; int /*<<< orphan*/ * name; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int MDF_SETTABLE ; 
 int /*<<< orphan*/  MEMRANGE_SET ; 
 TYPE_1__* attrnames ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct mem_range_op*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (char*) ; 
 void* FUNC7 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int memfd, int argc, char *argv[])
{
    struct mem_range_desc	mrd;
    struct mem_range_op		mro;
    int				i;
    int				ch;
    char			*ep;

    mrd.mr_base = 0;
    mrd.mr_len = 0;
    mrd.mr_flags = 0;
    FUNC5(mrd.mr_owner, "user");
    while ((ch = FUNC1(argc, argv, "b:l:o:")) != -1)
	switch(ch) {
	case 'b':
	    mrd.mr_base = FUNC7(optarg, &ep, 0);
	    if ((ep == optarg) || (*ep != 0))
		FUNC2("set");
	    break;
	case 'l':
	    mrd.mr_len = FUNC7(optarg, &ep, 0);
	    if ((ep == optarg) || (*ep != 0))
		FUNC2("set");
	    break;
	case 'o':
	    if ((*optarg == 0) || (FUNC6(optarg) > 7))
		FUNC2("set");
	    FUNC5(mrd.mr_owner, optarg);
	    break;
	    
	case '?':
	default:
	    FUNC2("set");
	}

    if (mrd.mr_len == 0)
	FUNC2("set");

    argc -= optind;
    argv += optind;
    
    while(argc--) {
	for (i = 0; attrnames[i].name != NULL; i++) {
	    if (!FUNC4(attrnames[i].name, argv[0])) {
		if (!(attrnames[i].kind & MDF_SETTABLE))
		    FUNC2("flags");
		mrd.mr_flags |= attrnames[i].val;
		break;
	    }
	}
	if (attrnames[i].name == NULL)
	    FUNC2("flags");
	argv++;
    }

    mro.mo_desc = &mrd;
    mro.mo_arg[0] = 0;
    if (FUNC3(memfd, MEMRANGE_SET, &mro))
	FUNC0(1, "can't set range");
}