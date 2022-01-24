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
struct archiver_args {int /*<<< orphan*/  commit_oid; int /*<<< orphan*/  time; } ;
struct archiver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  archive_zip_config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct archiver_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_zip_entry ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zip_date ; 
 int /*<<< orphan*/  zip_dir ; 
 int /*<<< orphan*/  zip_time ; 

__attribute__((used)) static int FUNC6(const struct archiver *ar,
			     struct archiver_args *args)
{
	int err;

	FUNC1(archive_zip_config, NULL);

	FUNC0(&args->time, &zip_date, &zip_time);

	FUNC2(&zip_dir, 0);

	err = FUNC4(args, write_zip_entry);
	if (!err)
		FUNC5(args->commit_oid);

	FUNC3(&zip_dir);

	return err;
}