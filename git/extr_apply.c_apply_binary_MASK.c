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
struct patch {char* old_name; char* new_name; char* old_oid_prefix; char* new_oid_prefix; } ;
struct object_id {int dummy; } ;
struct image {char* buf; unsigned long len; } ;
struct apply_state {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {unsigned int hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct apply_state*,struct image*,struct patch*) ; 
 int /*<<< orphan*/  blob_type ; 
 int /*<<< orphan*/  FUNC2 (struct image*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC4 (char*,struct object_id*) ; 
 scalar_t__ FUNC5 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long,int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC7 (struct object_id*) ; 
 char* FUNC8 (struct object_id*) ; 
 char* FUNC9 (struct object_id*,int*,unsigned long*) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 unsigned int const FUNC11 (char*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC12(struct apply_state *state,
			struct image *img,
			struct patch *patch)
{
	const char *name = patch->old_name ? patch->old_name : patch->new_name;
	struct object_id oid;
	const unsigned hexsz = the_hash_algo->hexsz;

	/*
	 * For safety, we require patch index line to contain
	 * full hex textual object ID for old and new, at least for now.
	 */
	if (FUNC11(patch->old_oid_prefix) != hexsz ||
	    FUNC11(patch->new_oid_prefix) != hexsz ||
	    FUNC4(patch->old_oid_prefix, &oid) ||
	    FUNC4(patch->new_oid_prefix, &oid))
		return FUNC3(FUNC0("cannot apply binary patch to '%s' "
			       "without full index line"), name);

	if (patch->old_name) {
		/*
		 * See if the old one matches what the patch
		 * applies to.
		 */
		FUNC6(img->buf, img->len, blob_type, &oid);
		if (FUNC10(FUNC8(&oid), patch->old_oid_prefix))
			return FUNC3(FUNC0("the patch applies to '%s' (%s), "
				       "which does not match the "
				       "current contents."),
				     name, FUNC8(&oid));
	}
	else {
		/* Otherwise, the old one must be empty. */
		if (img->len)
			return FUNC3(FUNC0("the patch applies to an empty "
				       "'%s' but it is not empty"), name);
	}

	FUNC4(patch->new_oid_prefix, &oid);
	if (FUNC7(&oid)) {
		FUNC2(img);
		return 0; /* deletion patch */
	}

	if (FUNC5(&oid)) {
		/* We already have the postimage */
		enum object_type type;
		unsigned long size;
		char *result;

		result = FUNC9(&oid, &type, &size);
		if (!result)
			return FUNC3(FUNC0("the necessary postimage %s for "
				       "'%s' cannot be read"),
				     patch->new_oid_prefix, name);
		FUNC2(img);
		img->buf = result;
		img->len = size;
	} else {
		/*
		 * We have verified buf matches the preimage;
		 * apply the patch data to it, which is stored
		 * in the patch->fragments->{patch,size}.
		 */
		if (FUNC1(state, img, patch))
			return FUNC3(FUNC0("binary patch does not apply to '%s'"),
				     name);

		/* verify that the result matches */
		FUNC6(img->buf, img->len, blob_type, &oid);
		if (FUNC10(FUNC8(&oid), patch->new_oid_prefix))
			return FUNC3(FUNC0("binary patch to '%s' creates incorrect result (expecting %s, got %s)"),
				name, patch->new_oid_prefix, FUNC8(&oid));
	}

	return 0;
}