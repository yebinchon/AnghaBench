#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* length; int* extended_attribute_length; int /*<<< orphan*/  name; int /*<<< orphan*/  parent_number; } ;
typedef  TYPE_1__ path_table_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3(path_table_entry *pttemp, int num, int mode)
{
	FUNC2("<ptentry num=\"%i\">\n" ,num);
	FUNC2("<length>%i</length>\n", pttemp->length[0]);
	FUNC2("<extended_attribute_length>%i</extended_attribute_length>\n",
	    pttemp->extended_attribute_length[0]);
	FUNC2("<parent_number>%i</parent_number>\n",
	    FUNC1(pttemp->parent_number,mode));
	FUNC0("name",
	    pttemp->name, pttemp->length[0]);
	FUNC2("</ptentry>\n");
}