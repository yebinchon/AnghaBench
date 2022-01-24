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
struct fuse_ticket {int dummy; } ;
struct fuse_data {int dataflags; int ticketer; } ;

/* Variables and functions */
 int FSESS_INITED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PCATCH ; 
 int PDROP ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_data*) ; 
 struct fuse_ticket* FUNC3 (struct fuse_data*) ; 
 int /*<<< orphan*/  fuse_mtx ; 
 int FUNC4 (int*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 

struct fuse_ticket *
FUNC5(struct fuse_data *data)
{
	int err = 0;
	struct fuse_ticket *ftick;

	ftick = FUNC3(data);

	if (!(data->dataflags & FSESS_INITED)) {
		/* Sleep until get answer for INIT messsage */
		FUNC0();
		if (!(data->dataflags & FSESS_INITED) && data->ticketer > 2) {
			err = FUNC4(&data->ticketer, &fuse_mtx, PCATCH | PDROP,
			    "fu_ini", 0);
			if (err)
				FUNC2(data);
		} else
			FUNC1();
	}
	return ftick;
}