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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct mfi_pd_list {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_PD_GET_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_pd_list*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct mfi_pd_list*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mfi_pd_list* FUNC2 (struct mfi_pd_list*,int) ; 

int
FUNC3(int fd, struct mfi_pd_list **listp, uint8_t *statusp)
{
	struct mfi_pd_list *list;
	uint32_t list_size;

	/*
	 * Keep fetching the list in a loop until we have a large enough
	 * buffer to hold the entire list.
	 */
	list = NULL;
	list_size = 1024;
fetch:
	list = FUNC2(list, list_size);
	if (list == NULL)
		return (-1);
	if (FUNC1(fd, MFI_DCMD_PD_GET_LIST, list, list_size, NULL,
	    0, statusp) < 0) {
		FUNC0(list);
		return (-1);
	}

	if (list->size > list_size) {
		list_size = list->size;
		goto fetch;
	}

	*listp = list;
	return (0);
}