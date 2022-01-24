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
struct keys_array {int dummy; } ;
struct key_value {struct bwstring const* k; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwstring const*) ; 
 struct key_value* FUNC1 (struct keys_array*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t keys_num ; 
 int /*<<< orphan*/  FUNC3 (struct keys_array*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(const struct bwstring *s, struct keys_array *ka)
{

	if (ka) {
		for (size_t i = 0; i < keys_num; ++i) {
			const struct key_value *kv;

			kv = FUNC1(ka, i);
			if (kv->k && kv->k != s)
				FUNC0(kv->k);
		}
		FUNC3(ka, 0, FUNC2());
	}
}