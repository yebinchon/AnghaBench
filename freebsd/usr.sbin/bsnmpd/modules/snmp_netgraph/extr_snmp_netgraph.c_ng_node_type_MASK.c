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
struct nodeinfo {int /*<<< orphan*/  type; } ;
struct ng_mesg {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  ng_ID_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NGM_NODEINFO ; 
 int /*<<< orphan*/  FUNC0 (struct ng_mesg*) ; 
 struct ng_mesg* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

ng_ID_t
FUNC3(ng_ID_t id, char *type)
{
	struct ng_mesg *resp;

	if ((resp = FUNC1(id, NGM_GENERIC_COOKIE, NGM_NODEINFO,
	    NULL, 0)) == NULL)
		return (0);
	FUNC2(type, ((struct nodeinfo *)(void *)resp->data)->type);
	FUNC0(resp);
	return (id);
}