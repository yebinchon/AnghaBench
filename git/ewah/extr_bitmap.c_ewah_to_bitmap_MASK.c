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
struct ewah_iterator {int dummy; } ;
struct ewah_bitmap {int dummy; } ;
struct bitmap {size_t word_alloc; int /*<<< orphan*/ * words; } ;
typedef  int /*<<< orphan*/  eword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t) ; 
 struct bitmap* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ewah_iterator*,struct ewah_bitmap*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct ewah_iterator*) ; 

struct bitmap *FUNC4(struct ewah_bitmap *ewah)
{
	struct bitmap *bitmap = FUNC1();
	struct ewah_iterator it;
	eword_t blowup;
	size_t i = 0;

	FUNC2(&it, ewah);

	while (FUNC3(&blowup, &it)) {
		FUNC0(bitmap->words, i + 1, bitmap->word_alloc);
		bitmap->words[i++] = blowup;
	}

	bitmap->word_alloc = i;
	return bitmap;
}