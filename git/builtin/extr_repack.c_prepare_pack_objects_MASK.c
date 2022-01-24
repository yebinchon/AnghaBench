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
struct pack_objects_args {scalar_t__ quiet; scalar_t__ local; scalar_t__ no_reuse_object; scalar_t__ no_reuse_delta; scalar_t__ max_pack_size; scalar_t__ threads; scalar_t__ depth; scalar_t__ window_memory; scalar_t__ window; } ;
struct child_process {int git_cmd; int out; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ delta_base_offset ; 
 char* packtmp ; 

__attribute__((used)) static void FUNC2(struct child_process *cmd,
				 const struct pack_objects_args *args)
{
	FUNC0(&cmd->args, "pack-objects");
	if (args->window)
		FUNC1(&cmd->args, "--window=%s", args->window);
	if (args->window_memory)
		FUNC1(&cmd->args, "--window-memory=%s", args->window_memory);
	if (args->depth)
		FUNC1(&cmd->args, "--depth=%s", args->depth);
	if (args->threads)
		FUNC1(&cmd->args, "--threads=%s", args->threads);
	if (args->max_pack_size)
		FUNC1(&cmd->args, "--max-pack-size=%s", args->max_pack_size);
	if (args->no_reuse_delta)
		FUNC1(&cmd->args, "--no-reuse-delta");
	if (args->no_reuse_object)
		FUNC1(&cmd->args, "--no-reuse-object");
	if (args->local)
		FUNC0(&cmd->args,  "--local");
	if (args->quiet)
		FUNC0(&cmd->args,  "--quiet");
	if (delta_base_offset)
		FUNC0(&cmd->args,  "--delta-base-offset");
	FUNC0(&cmd->args, packtmp);
	cmd->git_cmd = 1;
	cmd->out = -1;
}