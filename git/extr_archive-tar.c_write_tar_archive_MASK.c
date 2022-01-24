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
struct archiver_args {int dummy; } ;
struct archiver {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct archiver_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archiver_args*) ; 
 int /*<<< orphan*/  write_tar_entry ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(const struct archiver *ar,
			     struct archiver_args *args)
{
	int err = 0;

	FUNC1(args);
	err = FUNC0(args, write_tar_entry);
	if (!err)
		FUNC2();
	return err;
}