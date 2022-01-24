#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {char* new_name; unsigned int new_mode; int /*<<< orphan*/  is_binary; int /*<<< orphan*/  old_name; int /*<<< orphan*/  is_new; } ;
struct image {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_5__ {struct cache_entry** cache; } ;
struct TYPE_4__ {TYPE_2__* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,struct cache_entry*,struct stat*) ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char*,char*) ; 
 int FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct apply_state*,struct strbuf*,struct cache_entry*,struct stat*,struct patch*,char*,unsigned int) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (struct image*,char*,size_t,int) ; 
 char* FUNC9 (struct strbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (struct apply_state*,struct cache_entry*,struct stat*) ; 

__attribute__((used)) static int FUNC12(struct apply_state *state,
			struct image *image,
			struct patch *patch)
{
	struct strbuf buf = STRBUF_INIT;
	int status, pos;
	size_t len;
	char *img;
	struct stat st;
	struct cache_entry *ce;
	char *name = patch->new_name;
	unsigned mode = patch->new_mode;

	if (!patch->is_new)
		FUNC0("patch to %s is not a creation", patch->old_name);

	pos = FUNC5(state->repo->index, name, FUNC10(name));
	if (pos < 0)
		return FUNC3(FUNC1("%s: does not exist in index"), name);
	ce = state->repo->index->cache[pos];
	if (FUNC7(name, &st)) {
		if (errno != ENOENT)
			return FUNC4("%s", name);
		if (FUNC2(state->repo->index, ce, &st))
			return -1;
	}
	if (FUNC11(state, ce, &st))
		return FUNC3(FUNC1("%s: does not match index"), name);

	status = FUNC6(state, &buf, ce, &st, patch, name, mode);
	if (status < 0)
		return status;
	else if (status)
		return -1;
	img = FUNC9(&buf, &len);
	FUNC8(image, img, len, !patch->is_binary);
	return 0;
}