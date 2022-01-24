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
struct patch {int is_binary; scalar_t__ old_name; void* ws_rule; scalar_t__ new_name; } ;
struct apply_state {int /*<<< orphan*/  linenr; scalar_t__ check; scalar_t__ apply; TYPE_1__* repo; } ;
typedef  int /*<<< orphan*/  git_binary ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct apply_state*,char*,unsigned long,int*,struct patch*) ; 
 unsigned long FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct patch*) ; 
 int FUNC6 (struct apply_state*,char*,unsigned long,struct patch*) ; 
 int FUNC7 (struct apply_state*,char*,unsigned long,struct patch*) ; 
 int /*<<< orphan*/  FUNC8 (struct apply_state*,struct patch*) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct apply_state*,struct patch*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct apply_state *state, char *buffer, unsigned long size, struct patch *patch)
{
	int hdrsize, patchsize;
	int offset = FUNC2(state, buffer, size, &hdrsize, patch);

	if (offset < 0)
		return offset;

	FUNC8(state, patch);

	if (!FUNC10(state, patch))
		patch->ws_rule = 0;
	else if (patch->new_name)
		patch->ws_rule = FUNC11(state->repo->index,
						 patch->new_name);
	else
		patch->ws_rule = FUNC11(state->repo->index,
						 patch->old_name);

	patchsize = FUNC7(state,
				       buffer + offset + hdrsize,
				       size - offset - hdrsize,
				       patch);

	if (patchsize < 0)
		return -128;

	if (!patchsize) {
		static const char git_binary[] = "GIT binary patch\n";
		int hd = hdrsize + offset;
		unsigned long llen = FUNC3(buffer + hd, size - hd);

		if (llen == sizeof(git_binary) - 1 &&
		    !FUNC4(git_binary, buffer + hd, llen)) {
			int used;
			state->linenr++;
			used = FUNC6(state, buffer + hd + llen,
					    size - hd - llen, patch);
			if (used < 0)
				return -1;
			if (used)
				patchsize = used + llen;
			else
				patchsize = 0;
		}
		else if (!FUNC4(" differ\n", buffer + hd + llen - 8, 8)) {
			static const char *binhdr[] = {
				"Binary files ",
				"Files ",
				NULL,
			};
			int i;
			for (i = 0; binhdr[i]; i++) {
				int len = FUNC9(binhdr[i]);
				if (len < size - hd &&
				    !FUNC4(binhdr[i], buffer + hd, len)) {
					state->linenr++;
					patch->is_binary = 1;
					patchsize = llen;
					break;
				}
			}
		}

		/* Empty patch cannot be applied if it is a text patch
		 * without metadata change.  A binary patch appears
		 * empty to us here.
		 */
		if ((state->apply || state->check) &&
		    (!patch->is_binary && !FUNC5(patch))) {
			FUNC1(FUNC0("patch with only garbage at line %d"), state->linenr);
			return -128;
		}
	}

	return offset + hdrsize + patchsize;
}