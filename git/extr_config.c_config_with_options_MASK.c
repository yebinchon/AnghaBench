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
struct git_config_source {scalar_t__ blob; scalar_t__ file; scalar_t__ use_stdin; } ;
struct config_options {scalar_t__ respect_includes; } ;
struct config_include_data {struct config_options const* opts; void* data; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 struct config_include_data CONFIG_INCLUDE_INIT ; 
 int FUNC0 (struct config_options const*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  git_config_include ; 

int FUNC4(config_fn_t fn, void *data,
			struct git_config_source *config_source,
			const struct config_options *opts)
{
	struct config_include_data inc = CONFIG_INCLUDE_INIT;

	if (opts->respect_includes) {
		inc.fn = fn;
		inc.data = data;
		inc.opts = opts;
		fn = git_config_include;
		data = &inc;
	}

	/*
	 * If we have a specific filename, use it. Otherwise, follow the
	 * regular lookup sequence.
	 */
	if (config_source && config_source->use_stdin)
		return FUNC3(fn, data);
	else if (config_source && config_source->file)
		return FUNC2(fn, config_source->file, data);
	else if (config_source && config_source->blob)
		return FUNC1(fn, config_source->blob, data);

	return FUNC0(opts, fn, data);
}