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
struct commit_graph {int /*<<< orphan*/  chunk_commit_data; int /*<<< orphan*/  chunk_oid_lookup; int /*<<< orphan*/  chunk_oid_fanout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int FUNC1(struct commit_graph *g)
{
	/*
	 * Basic validation shared between parse_commit_graph()
	 * which'll be called every time the graph is used, and the
	 * much more expensive verify_commit_graph() used by
	 * "commit-graph verify".
	 *
	 * There should only be very basic checks here to ensure that
	 * we don't e.g. segfault in fill_commit_in_graph(), but
	 * because this is a very hot codepath nothing that e.g. loops
	 * over g->num_commits, or runs a checksum on the commit-graph
	 * itself.
	 */
	if (!g->chunk_oid_fanout) {
		FUNC0("commit-graph is missing the OID Fanout chunk");
		return 1;
	}
	if (!g->chunk_oid_lookup) {
		FUNC0("commit-graph is missing the OID Lookup chunk");
		return 1;
	}
	if (!g->chunk_commit_data) {
		FUNC0("commit-graph is missing the Commit Data chunk");
		return 1;
	}

	return 0;
}