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
struct thread {int dummy; } ;
struct per_user_data {int /*<<< orphan*/  user_data_lock; int /*<<< orphan*/  file_offset; int /*<<< orphan*/  gmap_tree; int /*<<< orphan*/  gref_tree; } ;
struct file_offset_struct {int /*<<< orphan*/  count; scalar_t__ file_offset; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_OFFSET_COUNT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_GNTDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file_offset_struct*) ; 
 int FUNC2 (struct per_user_data*,int /*<<< orphan*/  (*) (struct per_user_data*)) ; 
 int /*<<< orphan*/  file_offset_head ; 
 void* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct per_user_data*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int flag, int otyp, struct thread *td)
{
	int error;
	struct per_user_data *priv_user;
	struct file_offset_struct *offset;

	priv_user = FUNC3(sizeof(*priv_user), M_GNTDEV, M_WAITOK | M_ZERO);
	FUNC0(&priv_user->gref_tree);
	FUNC0(&priv_user->gmap_tree);
	FUNC0(&priv_user->file_offset);
	offset = FUNC3(sizeof(*offset), M_GNTDEV, M_WAITOK | M_ZERO);
	offset->file_offset = 0;
	offset->count = MAX_OFFSET_COUNT;
	FUNC1(file_offset_head, &priv_user->file_offset, offset);
	FUNC4(&priv_user->user_data_lock,
	    "per user data mutex", NULL, MTX_DEF);

	error = FUNC2(priv_user, per_user_data_dtor);
	if (error != 0)
		FUNC5(priv_user);

	return (error);
}