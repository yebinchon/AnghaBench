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
struct packed_git {int index_version; } ;
struct pack_idx_option {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct packed_git* FUNC1 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct packed_git*) ; 
 scalar_t__ FUNC5 (struct packed_git*) ; 
 int /*<<< orphan*/  FUNC6 (struct packed_git*,struct pack_idx_option*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(struct pack_idx_option *opts, const char *pack_name)
{
	struct packed_git *p = FUNC1(pack_name, FUNC7(pack_name), 1);

	if (!p)
		FUNC3(FUNC0("Cannot open existing pack file '%s'"), pack_name);
	if (FUNC5(p))
		FUNC3(FUNC0("Cannot open existing pack idx file for '%s'"), pack_name);

	/* Read the attributes from the existing idx file */
	opts->version = p->index_version;

	if (opts->version == 2)
		FUNC6(p, opts);

	/*
	 * Get rid of the idx file as we do not need it anymore.
	 * NEEDSWORK: extract this bit from free_pack_by_name() in
	 * sha1-file.c, perhaps?  It shouldn't matter very much as we
	 * know we haven't installed this pack (hence we never have
	 * read anything from it).
	 */
	FUNC2(p);
	FUNC4(p);
}