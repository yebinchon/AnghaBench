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
struct key_specs {int /*<<< orphan*/  pos1b; int /*<<< orphan*/  c1; int /*<<< orphan*/  f1; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring const*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC1 (struct bwstring const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC2(const struct bwstring *s, struct key_specs *ks,
    size_t *field_start, size_t *key_start, bool *empty_field, bool *empty_key)
{

	*field_start = FUNC1(s, ks->f1, empty_field);
	if (!*empty_field)
		*key_start = FUNC0(s, ks->c1, *field_start,
		    ks->pos1b, empty_key);
	else
		*empty_key = true;
}