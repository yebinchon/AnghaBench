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
struct patch {scalar_t__ old_name; scalar_t__ new_name; struct fragment* fragments; } ;
struct image {unsigned long len; void* buf; } ;
struct fragment {int binary_patch_method; unsigned long size; int /*<<< orphan*/  patch; struct fragment* next; } ;
struct apply_state {scalar_t__ apply_in_reverse; } ;

/* Variables and functions */
#define  BINARY_DELTA_DEFLATED 129 
#define  BINARY_LITERAL_DEFLATED 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct image*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC3 (void*,unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct apply_state *state,
				 struct image *img,
				 struct patch *patch)
{
	struct fragment *fragment = patch->fragments;
	unsigned long len;
	void *dst;

	if (!fragment)
		return FUNC2(FUNC0("missing binary patch data for '%s'"),
			     patch->new_name ?
			     patch->new_name :
			     patch->old_name);

	/* Binary patch is irreversible without the optional second hunk */
	if (state->apply_in_reverse) {
		if (!fragment->next)
			return FUNC2(FUNC0("cannot reverse-apply a binary patch "
				       "without the reverse hunk to '%s'"),
				     patch->new_name
				     ? patch->new_name : patch->old_name);
		fragment = fragment->next;
	}
	switch (fragment->binary_patch_method) {
	case BINARY_DELTA_DEFLATED:
		dst = FUNC3(img->buf, img->len, fragment->patch,
				  fragment->size, &len);
		if (!dst)
			return -1;
		FUNC1(img);
		img->buf = dst;
		img->len = len;
		return 0;
	case BINARY_LITERAL_DEFLATED:
		FUNC1(img);
		img->len = fragment->size;
		img->buf = FUNC4(fragment->patch, img->len);
		return 0;
	}
	return -1;
}