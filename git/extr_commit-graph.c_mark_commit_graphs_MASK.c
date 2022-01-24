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
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct write_commit_graph_context {size_t num_commit_graphs_after; size_t num_commit_graphs_before; int /*<<< orphan*/ * commit_graph_filenames_before; } ;
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct stat {int /*<<< orphan*/  st_atime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct utimbuf*) ; 

__attribute__((used)) static void FUNC3(struct write_commit_graph_context *ctx)
{
	uint32_t i;
	time_t now = FUNC1(NULL);

	for (i = ctx->num_commit_graphs_after - 1; i < ctx->num_commit_graphs_before; i++) {
		struct stat st;
		struct utimbuf updated_time;

		FUNC0(ctx->commit_graph_filenames_before[i], &st);

		updated_time.actime = st.st_atime;
		updated_time.modtime = now;
		FUNC2(ctx->commit_graph_filenames_before[i], &updated_time);
	}
}