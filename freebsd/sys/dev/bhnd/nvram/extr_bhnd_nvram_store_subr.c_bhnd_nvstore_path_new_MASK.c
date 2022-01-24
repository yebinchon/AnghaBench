#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* path_str; int /*<<< orphan*/ * pending; scalar_t__ num_vars; int /*<<< orphan*/ * index; } ;
typedef  TYPE_1__ bhnd_nvstore_path ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bhnd_nvstore_path *
FUNC5(const char *path_str, size_t path_len)
{
	bhnd_nvstore_path *path;

	/* Allocate new entry */
	path = FUNC1(sizeof(*path));
	if (path == NULL)
		return (NULL);

	path->index = NULL;
	path->num_vars = 0;

	path->pending = FUNC3();
	if (path->pending == NULL)
		goto failed;

	path->path_str = FUNC2(path_str, path_len);
	if (path->path_str == NULL)
		goto failed;

	return (path);

failed:
	if (path->pending != NULL)
		FUNC4(path->pending);

	if (path->path_str != NULL)
		FUNC0(path->path_str);

	FUNC0(path);

	return (NULL);
}