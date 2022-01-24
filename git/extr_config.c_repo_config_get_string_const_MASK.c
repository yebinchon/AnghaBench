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
struct repository {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 

int FUNC3(struct repository *repo,
				 const char *key, const char **dest)
{
	int ret;
	FUNC0(repo);
	ret = FUNC1(repo->config, key, dest);
	if (ret < 0)
		FUNC2(key, NULL);
	return ret;
}