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
struct ewah_bitmap {int dummy; } ;
struct bitmap {size_t word_alloc; scalar_t__* words; } ;
typedef  scalar_t__ eword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ewah_bitmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ewah_bitmap*,int /*<<< orphan*/ ,size_t) ; 
 struct ewah_bitmap* FUNC2 () ; 

struct ewah_bitmap *FUNC3(struct bitmap *bitmap)
{
	struct ewah_bitmap *ewah = FUNC2();
	size_t i, running_empty_words = 0;
	eword_t last_word = 0;

	for (i = 0; i < bitmap->word_alloc; ++i) {
		if (bitmap->words[i] == 0) {
			running_empty_words++;
			continue;
		}

		if (last_word != 0)
			FUNC0(ewah, last_word);

		if (running_empty_words > 0) {
			FUNC1(ewah, 0, running_empty_words);
			running_empty_words = 0;
		}

		last_word = bitmap->words[i];
	}

	FUNC0(ewah, last_word);
	return ewah;
}