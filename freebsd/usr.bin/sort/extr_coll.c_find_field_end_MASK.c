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
typedef  scalar_t__ wchar_t ;
struct key_specs {size_t f2; scalar_t__ c2; int /*<<< orphan*/  pos2b; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ field_sep; scalar_t__ tflag; } ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring const*) ; 
 scalar_t__ FUNC1 (struct bwstring const*,size_t) ; 
 size_t FUNC2 (struct bwstring const*,scalar_t__,size_t,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC3 (struct bwstring const*,size_t,int*) ; 
 TYPE_1__ sort_opts_vals ; 

__attribute__((used)) static size_t
FUNC4(const struct bwstring *s, struct key_specs *ks)
{
	size_t f2, next_field_start, pos_end;
	bool empty_field, empty_key;

	empty_field = false;
	empty_key = false;
	f2 = ks->f2;

	if (f2 == 0)
		return (FUNC0(s) + 1);
	else {
		if (ks->c2 == 0) {
			next_field_start = FUNC3(s, f2 + 1,
			    &empty_field);
			if ((next_field_start > 0) && sort_opts_vals.tflag &&
			    ((wchar_t)sort_opts_vals.field_sep == FUNC1(s,
			    next_field_start - 1)))
				--next_field_start;
		} else
			next_field_start = FUNC3(s, f2,
			    &empty_field);
	}

	if (empty_field || (next_field_start >= FUNC0(s)))
		return (FUNC0(s) + 1);

	if (ks->c2) {
		pos_end = FUNC2(s, ks->c2, next_field_start,
		    ks->pos2b, &empty_key);
		if (pos_end < FUNC0(s))
			++pos_end;
	} else
		pos_end = next_field_start;

	return (pos_end);
}