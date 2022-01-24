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
typedef  int /*<<< orphan*/  sctp_auth_chklist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 

sctp_auth_chklist_t *
FUNC2(sctp_auth_chklist_t *list)
{
	sctp_auth_chklist_t *new_list;

	if (list == NULL)
		return (NULL);

	/* get a new list */
	new_list = FUNC1();
	if (new_list == NULL)
		return (NULL);
	/* copy it */
	FUNC0(new_list, list, sizeof(*new_list));

	return (new_list);
}