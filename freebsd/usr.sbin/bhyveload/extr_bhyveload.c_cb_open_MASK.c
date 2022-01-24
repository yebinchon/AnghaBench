#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fd; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
struct cb_file {int cf_isdir; TYPE_1__ cf_u; TYPE_2__ cf_stat; int /*<<< orphan*/  cf_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct cb_file*) ; 
 int /*<<< orphan*/  host_base ; 
 struct cb_file* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int
FUNC10(void *arg, const char *filename, void **hp)
{
	struct cb_file *cf;
	char path[PATH_MAX];

	if (!host_base)
		return (ENOENT);

	FUNC8(path, host_base, PATH_MAX);
	if (path[FUNC9(path) - 1] == '/')
		path[FUNC9(path) - 1] = 0;
	FUNC7(path, filename, PATH_MAX);
	cf = FUNC3(sizeof(struct cb_file));
	if (FUNC6(path, &cf->cf_stat) < 0) {
		FUNC2(cf);
		return (errno);
	}

	cf->cf_size = cf->cf_stat.st_size;
	if (FUNC0(cf->cf_stat.st_mode)) {
		cf->cf_isdir = 1;
		cf->cf_u.dir = FUNC5(path);
		if (!cf->cf_u.dir)
			goto out;
		*hp = cf;
		return (0);
	}
	if (FUNC1(cf->cf_stat.st_mode)) {
		cf->cf_isdir = 0;
		cf->cf_u.fd = FUNC4(path, O_RDONLY);
		if (cf->cf_u.fd < 0)
			goto out;
		*hp = cf;
		return (0);
	}

out:
	FUNC2(cf);
	return (EINVAL);
}