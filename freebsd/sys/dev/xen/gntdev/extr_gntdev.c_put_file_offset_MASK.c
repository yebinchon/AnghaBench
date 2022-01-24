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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct per_user_data {int /*<<< orphan*/  user_data_lock; int /*<<< orphan*/  file_offset; } ;
struct file_offset_struct {scalar_t__ file_offset; int count; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_GNTDEV ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file_offset_struct*) ; 
 struct file_offset_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file_offset_struct*) ; 
 struct file_offset_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file_offset_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct file_offset_struct*) ; 
 int /*<<< orphan*/  file_offset_head ; 
 int /*<<< orphan*/  FUNC4 (struct file_offset_struct*,int /*<<< orphan*/ ) ; 
 struct file_offset_struct* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct per_user_data *priv_user, uint32_t count,
    uint64_t file_offset)
{
	struct file_offset_struct *offset, *offset_nxt, *offset_prv;

	offset = FUNC5(sizeof(*offset), M_GNTDEV, M_WAITOK | M_ZERO);
	offset->file_offset = file_offset;
	offset->count = count;

	FUNC6(&priv_user->user_data_lock);
	FUNC0(file_offset_head, &priv_user->file_offset, offset);
	offset_nxt = FUNC1(file_offset_head, &priv_user->file_offset, offset);
	offset_prv = FUNC2(file_offset_head, &priv_user->file_offset, offset);
	if (offset_nxt != NULL &&
	    offset_nxt->file_offset == offset->file_offset + offset->count *
	    PAGE_SIZE) {
		offset->count += offset_nxt->count;
		FUNC3(file_offset_head, &priv_user->file_offset,
		    offset_nxt);
		FUNC4(offset_nxt, M_GNTDEV);
	}
	if (offset_prv != NULL &&
	    offset->file_offset == offset_prv->file_offset + offset_prv->count *
	    PAGE_SIZE) {
		offset_prv->count += offset->count;
		FUNC3(file_offset_head, &priv_user->file_offset, offset);
		FUNC4(offset, M_GNTDEV);
	}
	FUNC7(&priv_user->user_data_lock);
}