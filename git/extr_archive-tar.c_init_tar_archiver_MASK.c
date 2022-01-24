#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_tar_config ; 
 int nr_tar_filters ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__ tar_archiver ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__** tar_filters ; 

void FUNC3(void)
{
	int i;
	FUNC1(&tar_archiver);

	FUNC2("tar.tgz.command", "gzip -cn", NULL);
	FUNC2("tar.tgz.remote", "true", NULL);
	FUNC2("tar.tar.gz.command", "gzip -cn", NULL);
	FUNC2("tar.tar.gz.remote", "true", NULL);
	FUNC0(git_tar_config, NULL);
	for (i = 0; i < nr_tar_filters; i++) {
		/* omit any filters that never had a command configured */
		if (tar_filters[i]->data)
			FUNC1(tar_filters[i]);
	}
}