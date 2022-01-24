#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sort_mods {int /*<<< orphan*/  nflag; int /*<<< orphan*/  hflag; int /*<<< orphan*/  gflag; int /*<<< orphan*/  Vflag; int /*<<< orphan*/  Rflag; int /*<<< orphan*/  Mflag; } ;
struct sort_list {int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct sort_mods sm; } ;
struct TYPE_3__ {int sort_method; scalar_t__ sflag; } ;

/* Variables and functions */
 int DEFAULT_SORT_ALGORITHM ; 
 int /*<<< orphan*/  DEFAULT_SORT_FUNC ; 
#define  SORT_DEFAULT 132 
#define  SORT_HEAPSORT 131 
#define  SORT_MERGESORT 130 
#define  SORT_QSORT 129 
#define  SORT_RADIXSORT 128 
 scalar_t__ byte_sort ; 
 scalar_t__ debug_sort ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  heapsort ; 
 TYPE_2__* keys ; 
 int /*<<< orphan*/  mergesort ; 
 int /*<<< orphan*/  FUNC4 (struct sort_list*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sort_list*,char const*) ; 
 TYPE_1__ sort_opts_vals ; 
 int /*<<< orphan*/  sort_qsort ; 

void
FUNC8(struct sort_list *list, const char *outfile)
{
	struct sort_mods *sm = &(keys[0].sm);

	if (!(sm->Mflag) && !(sm->Rflag) && !(sm->Vflag) && !(sm->Vflag) &&
	    !(sm->gflag) && !(sm->hflag) && !(sm->nflag)) {
		if ((sort_opts_vals.sort_method == SORT_DEFAULT) && byte_sort)
			sort_opts_vals.sort_method = SORT_RADIXSORT;

	} else if (sort_opts_vals.sort_method == SORT_RADIXSORT)
		FUNC0(2, "%s", FUNC3(9));

	/*
	 * to handle stable sort and the unique cases in the
	 * right order, we need stable basic algorithm
	 */
	if (sort_opts_vals.sflag) {
		switch (sort_opts_vals.sort_method){
		case SORT_MERGESORT:
			break;
		case SORT_RADIXSORT:
			break;
		case SORT_DEFAULT:
			sort_opts_vals.sort_method = SORT_MERGESORT;
			break;
		default:
			FUNC1(2, "%s", FUNC3(10));
		}
	}

	if (sort_opts_vals.sort_method == SORT_DEFAULT)
		sort_opts_vals.sort_method = DEFAULT_SORT_ALGORITHM;

	if (debug_sort)
		FUNC5("sort_method=%s\n",
		    FUNC2(sort_opts_vals.sort_method));

	switch (sort_opts_vals.sort_method){
	case SORT_RADIXSORT:
		FUNC6(list->list, list->count);
		FUNC7(list, outfile);
		break;
	case SORT_MERGESORT:
		FUNC4(list, mergesort, outfile);
		break;
	case SORT_HEAPSORT:
		FUNC4(list, heapsort,	outfile);
		break;
	case SORT_QSORT:
		FUNC4(list, sort_qsort, outfile);
		break;
	default:
		FUNC4(list, DEFAULT_SORT_FUNC, outfile);
		break;
	}
}