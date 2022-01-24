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
struct key_specs {int dummy; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 struct bwstring* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bwstring*,struct bwstring const*,size_t,size_t) ; 
 size_t FUNC2 (struct bwstring const*,struct key_specs*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwstring const*,struct key_specs*,size_t*,size_t*,int*,int*) ; 

__attribute__((used)) static struct bwstring *
FUNC4(const struct bwstring *s, struct key_specs *ks)
{
	struct bwstring *ret = NULL;

	if (s && ks) {
		size_t field_start, key_end, key_start, sz;
		bool empty_field, empty_key;

		field_start = 0;
		key_start = 0;
		empty_field = false;
		empty_key = false;

		FUNC3(s, ks, &field_start, &key_start,
		    &empty_field, &empty_key);

		if (empty_key)
			sz = 0;
		else {
			key_end = FUNC2(s, ks);
			sz = (key_end < key_start) ? 0 : (key_end - key_start);
		}

		ret = FUNC0(sz);
		if (sz)
			FUNC1(ret, s, key_start, sz);
	} else
		ret = FUNC0(0);

	return (ret);
}