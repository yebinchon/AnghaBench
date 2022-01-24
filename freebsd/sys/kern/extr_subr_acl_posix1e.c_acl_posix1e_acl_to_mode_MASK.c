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
struct acl_entry {int ae_tag; } ;
struct acl {int acl_cnt; struct acl_entry* acl_entry; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
#define  ACL_GROUP 133 
#define  ACL_GROUP_OBJ 132 
#define  ACL_MASK 131 
#define  ACL_OTHER 130 
#define  ACL_USER 129 
#define  ACL_USER_OBJ 128 
 int /*<<< orphan*/  FUNC0 (struct acl_entry*,struct acl_entry*,struct acl_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

mode_t
FUNC2(struct acl *acl)
{
	struct acl_entry *acl_mask, *acl_user_obj, *acl_group_obj, *acl_other;
	int i;

	/*
	 * Find the ACL entries relevant to a POSIX permission mode.
	 */
	acl_user_obj = acl_group_obj = acl_other = acl_mask = NULL;
	for (i = 0; i < acl->acl_cnt; i++) {
		switch (acl->acl_entry[i].ae_tag) {
		case ACL_USER_OBJ:
			acl_user_obj = &acl->acl_entry[i];
			break;

		case ACL_GROUP_OBJ:
			acl_group_obj = &acl->acl_entry[i];
			break;

		case ACL_OTHER:
			acl_other = &acl->acl_entry[i];
			break;

		case ACL_MASK:
			acl_mask = &acl->acl_entry[i];
			break;

		case ACL_USER:
		case ACL_GROUP:
			break;

		default:
			FUNC1("acl_posix1e_acl_to_mode: bad ae_tag");
		}
	}

	if (acl_user_obj == NULL || acl_group_obj == NULL || acl_other == NULL)
		FUNC1("acl_posix1e_acl_to_mode: missing base ae_tags");

	/*
	 * POSIX.1e specifies that if there is an ACL_MASK entry, we replace
	 * the mode "group" bits with its permissions.  If there isn't, we
	 * use the ACL_GROUP_OBJ permissions.
	 */
	if (acl_mask != NULL)
		return (FUNC0(acl_user_obj, acl_mask,
		    acl_other));
	else
		return (FUNC0(acl_user_obj, acl_group_obj,
		    acl_other));
}