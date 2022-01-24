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
struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int kidx; char* name; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct namedobj_instance*,struct table_config*) ; 
 scalar_t__ FUNC1 (struct namedobj_instance*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,struct table_config*) ; 

__attribute__((used)) static int
FUNC4(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{

	FUNC3((struct ip_fw_chain *)arg, (struct table_config *)no);
	if (FUNC1(ni, no->kidx) != 0)
		FUNC2("Error unlinking kidx %d from table %s\n",
		    no->kidx, no->name);
	FUNC0(ni, (struct table_config *)no);
	return (0);
}