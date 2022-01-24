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
struct witness {int w_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct witness* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct witness*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  w_free ; 
 int /*<<< orphan*/  w_free_cnt ; 
 int /*<<< orphan*/  w_list ; 
 int w_max_used_index ; 
 int /*<<< orphan*/  w_mtx ; 
 scalar_t__ witness_cold ; 
 int witness_count ; 
 int witness_watch ; 

__attribute__((used)) static struct witness *
FUNC8(void)
{
	struct witness *w;
	int index;

	if (witness_cold == 0)
		FUNC5(&w_mtx, MA_OWNED);

	if (witness_watch == -1) {
		FUNC6(&w_mtx);
		return (NULL);
	}
	if (FUNC1(&w_free)) {
		witness_watch = -1;
		FUNC6(&w_mtx);
		FUNC7("WITNESS: unable to allocate a new witness object\n");
		return (NULL);
	}
	w = FUNC2(&w_free);
	FUNC3(&w_free, w_list);
	w_free_cnt--;
	index = w->w_index;
	FUNC0(index > 0 && index == w_max_used_index+1 &&
	    index < witness_count);
	FUNC4(w, sizeof(*w));
	w->w_index = index;
	if (index > w_max_used_index)
		w_max_used_index = index;
	return (w);
}