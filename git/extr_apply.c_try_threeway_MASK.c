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
struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {char* new_name; char* old_name; int conflicted_threeway; int /*<<< orphan*/ * threeway_stage; scalar_t__ is_new; int /*<<< orphan*/  old_mode; int /*<<< orphan*/  old_oid_prefix; int /*<<< orphan*/  new_mode; scalar_t__ is_delete; } ;
struct object_id {int dummy; } ;
struct image {char* buf; int /*<<< orphan*/  len; } ;
struct cache_entry {int dummy; } ;
struct apply_state {scalar_t__ apply_verbosity; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct apply_state*,struct image*,struct patch*) ; 
 int /*<<< orphan*/  blob_type ; 
 int /*<<< orphan*/  FUNC3 (struct image*) ; 
 int FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC7 (struct apply_state*,struct image*,struct patch*) ; 
 scalar_t__ FUNC8 (struct apply_state*,struct image*,struct patch*,struct stat*,struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC11 (struct image*,char*,size_t,int) ; 
 scalar_t__ FUNC12 (struct strbuf*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC13 (struct strbuf*,size_t*) ; 
 int FUNC14 (struct apply_state*,struct image*,char*,struct object_id*,struct object_id*,struct object_id*) ; 
 scalar_t__ verbosity_silent ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC16(struct apply_state *state,
			struct image *image,
			struct patch *patch,
			struct stat *st,
			const struct cache_entry *ce)
{
	struct object_id pre_oid, post_oid, our_oid;
	struct strbuf buf = STRBUF_INIT;
	size_t len;
	int status;
	char *img;
	struct image tmp_image;

	/* No point falling back to 3-way merge in these cases */
	if (patch->is_delete ||
	    FUNC0(patch->old_mode) || FUNC0(patch->new_mode))
		return -1;

	/* Preimage the patch was prepared for */
	if (patch->is_new)
		FUNC15("", 0, blob_type, &pre_oid);
	else if (FUNC6(patch->old_oid_prefix, &pre_oid) ||
		 FUNC12(&buf, &pre_oid, patch->old_mode))
		return FUNC4(FUNC1("repository lacks the necessary blob to fall back on 3-way merge."));

	if (state->apply_verbosity > verbosity_silent)
		FUNC5(stderr, "%s", FUNC1("Falling back to three-way merge...\n"));

	img = FUNC13(&buf, &len);
	FUNC11(&tmp_image, img, len, 1);
	/* Apply the patch to get the post image */
	if (FUNC2(state, &tmp_image, patch) < 0) {
		FUNC3(&tmp_image);
		return -1;
	}
	/* post_oid is theirs */
	FUNC15(tmp_image.buf, tmp_image.len, blob_type, &post_oid);
	FUNC3(&tmp_image);

	/* our_oid is ours */
	if (patch->is_new) {
		if (FUNC7(state, &tmp_image, patch))
			return FUNC4(FUNC1("cannot read the current contents of '%s'"),
				     patch->new_name);
	} else {
		if (FUNC8(state, &tmp_image, patch, st, ce))
			return FUNC4(FUNC1("cannot read the current contents of '%s'"),
				     patch->old_name);
	}
	FUNC15(tmp_image.buf, tmp_image.len, blob_type, &our_oid);
	FUNC3(&tmp_image);

	/* in-core three-way merge between post and our using pre as base */
	status = FUNC14(state, image, patch->new_name,
				 &pre_oid, &our_oid, &post_oid);
	if (status < 0) {
		if (state->apply_verbosity > verbosity_silent)
			FUNC5(stderr,
				"%s", FUNC1("Failed to fall back on three-way merge...\n"));
		return status;
	}

	if (status) {
		patch->conflicted_threeway = 1;
		if (patch->is_new)
			FUNC9(&patch->threeway_stage[0]);
		else
			FUNC10(&patch->threeway_stage[0], &pre_oid);
		FUNC10(&patch->threeway_stage[1], &our_oid);
		FUNC10(&patch->threeway_stage[2], &post_oid);
		if (state->apply_verbosity > verbosity_silent)
			FUNC5(stderr,
				FUNC1("Applied patch to '%s' with conflicts.\n"),
				patch->new_name);
	} else {
		if (state->apply_verbosity > verbosity_silent)
			FUNC5(stderr,
				FUNC1("Applied patch to '%s' cleanly.\n"),
				patch->new_name);
	}
	return 0;
}