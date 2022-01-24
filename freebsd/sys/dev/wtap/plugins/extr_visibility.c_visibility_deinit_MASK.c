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
struct wtap_plugin {int /*<<< orphan*/  wp_sdev; } ;
struct visibility_plugin {int /*<<< orphan*/  pl_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_WTAP_PLUGIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct visibility_plugin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct wtap_plugin *plugin)
{
	struct visibility_plugin *vis_plugin;

	vis_plugin = (struct visibility_plugin *) plugin;
	FUNC0(plugin->wp_sdev);
	FUNC2(&vis_plugin->pl_mtx);
	FUNC1(vis_plugin, M_WTAP_PLUGIN);
	FUNC3("Removing visibility wtap plugin...\n");
}