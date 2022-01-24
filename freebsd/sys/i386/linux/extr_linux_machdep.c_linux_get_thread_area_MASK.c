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
struct segment_descriptor {int dummy; } ;
struct linux_get_thread_area_args {int /*<<< orphan*/  desc; } ;
struct l_user_desc {int entry_number; int read_exec_only; int seg_not_present; int /*<<< orphan*/  useable; int /*<<< orphan*/  limit_in_pages; int /*<<< orphan*/  contents; int /*<<< orphan*/  seg_32bit; int /*<<< orphan*/  limit; int /*<<< orphan*/  base_addr; } ;
struct l_desc_struct {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct l_desc_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct l_desc_struct*) ; 
 struct segment_descriptor* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct l_user_desc*,int) ; 
 int FUNC10 (struct l_user_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  fsgs_gdt ; 
 int /*<<< orphan*/  FUNC11 (struct l_desc_struct*,struct segment_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct l_user_desc*,int /*<<< orphan*/ ,int) ; 

int
FUNC13(struct thread *td, struct linux_get_thread_area_args *args)
{

	struct l_user_desc info;
	int error;
	int idx;
	struct l_desc_struct desc;
	struct segment_descriptor sd;

	error = FUNC9(args->desc, &info, sizeof(struct l_user_desc));
	if (error)
		return (error);

	idx = info.entry_number;
	/* XXX: I am not sure if we want 3 to be allowed too. */
	if (idx != 6 && idx != 3)
		return (EINVAL);

	idx = 3;

	FUNC12(&info, 0, sizeof(info));

	sd = FUNC8(fsgs_gdt)[1];

	FUNC11(&desc, &sd, sizeof(desc));

	info.entry_number = idx;
	info.base_addr = FUNC1(&desc);
	info.limit = FUNC3(&desc);
	info.seg_32bit = FUNC0(&desc);
	info.contents = FUNC2(&desc);
	info.read_exec_only = !FUNC7(&desc);
	info.limit_in_pages = FUNC4(&desc);
	info.seg_not_present = !FUNC5(&desc);
	info.useable = FUNC6(&desc);

	error = FUNC10(&info, args->desc, sizeof(struct l_user_desc));
	if (error)
		return (EFAULT);

	return (0);
}