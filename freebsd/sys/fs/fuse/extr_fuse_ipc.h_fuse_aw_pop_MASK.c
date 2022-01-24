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
struct fuse_data {int /*<<< orphan*/  aw_head; int /*<<< orphan*/  aw_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 struct fuse_ticket* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_ticket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct fuse_ticket *
FUNC3(struct fuse_data *data)
{
	struct fuse_ticket *ftick;

	FUNC2(&data->aw_mtx, MA_OWNED);

	if ((ftick = FUNC0(&data->aw_head)) != NULL)
		FUNC1(ftick);

	return (ftick);
}