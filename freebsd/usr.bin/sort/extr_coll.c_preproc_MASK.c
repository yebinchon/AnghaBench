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
struct sort_mods {scalar_t__ Mflag; scalar_t__ fflag; scalar_t__ iflag; scalar_t__ dflag; scalar_t__ bflag; } ;
struct keys_array {int dummy; } ;
struct key_specs {struct sort_mods sm; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ kflag; } ;

/* Variables and functions */
 struct bwstring* FUNC0 (struct bwstring*) ; 
 struct bwstring* FUNC1 (struct bwstring*,struct key_specs*) ; 
 struct sort_mods* default_sort_mods ; 
 struct bwstring* FUNC2 (struct bwstring*) ; 
 struct bwstring* FUNC3 (struct bwstring*) ; 
 struct bwstring* FUNC4 (struct bwstring*) ; 
 struct bwstring* FUNC5 (struct bwstring*) ; 
 struct key_specs* keys ; 
 size_t keys_num ; 
 int /*<<< orphan*/  FUNC6 (struct keys_array*,struct bwstring*,size_t) ; 
 TYPE_1__ sort_opts_vals ; 

int
FUNC7(struct bwstring *s, struct keys_array *ka)
{

	if (sort_opts_vals.kflag)
		for (size_t i = 0; i < keys_num; i++) {
			struct bwstring *key;
			struct key_specs *kspecs;
			struct sort_mods *sm;

			kspecs = &(keys[i]);
			key = FUNC1(s, kspecs);

			sm = &(kspecs->sm);
			if (sm->dflag)
				key = FUNC2(key);
			else if (sm->iflag)
				key = FUNC5(key);
			if (sm->fflag || sm->Mflag)
				key = FUNC3(key);

			FUNC6(ka, key, i);
		}
	else {
		struct bwstring *ret = NULL;
		struct sort_mods *sm = default_sort_mods;

		if (sm->bflag) {
			if (ret == NULL)
				ret = FUNC0(s);
			ret = FUNC4(ret);
		}
		if (sm->dflag) {
			if (ret == NULL)
				ret = FUNC0(s);
			ret = FUNC2(ret);
		} else if (sm->iflag) {
			if (ret == NULL)
				ret = FUNC0(s);
			ret = FUNC5(ret);
		}
		if (sm->fflag || sm->Mflag) {
			if (ret == NULL)
				ret = FUNC0(s);
			ret = FUNC3(ret);
		}
		if (ret == NULL)
			FUNC6(ka, s, 0);
		else
			FUNC6(ka, ret, 0);
	}

	return 0;
}