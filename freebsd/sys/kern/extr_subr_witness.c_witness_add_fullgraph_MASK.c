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
struct witness {int w_displayed; scalar_t__ w_line; size_t w_index; int /*<<< orphan*/  w_name; int /*<<< orphan*/ * w_file; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int WITNESS_PARENT ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct witness* w_data ; 
 int w_max_used_index ; 
 int** w_rmatrix ; 

__attribute__((used)) static void
FUNC2(struct sbuf *sb, struct witness *w)
{
	int i;

	if (w->w_displayed != 0 || (w->w_file == NULL && w->w_line == 0))
		return;
	w->w_displayed = 1;

	FUNC0(w->w_index);
	for (i = 1; i <= w_max_used_index; i++) {
		if (w_rmatrix[w->w_index][i] & WITNESS_PARENT) {
			FUNC1(sb, "\"%s\",\"%s\"\n", w->w_name,
			    w_data[i].w_name);
			FUNC2(sb, &w_data[i]);
		}
	}
}