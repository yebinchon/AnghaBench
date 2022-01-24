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
typedef  int /*<<< orphan*/  uint16_t ;
struct named_object {int dummy; } ;
struct table_config {struct named_object no; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 struct namedobj_instance* FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct namedobj_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct named_object *
FUNC4(struct ip_fw_chain *ch, uint16_t idx)
{
	struct namedobj_instance *ni;
	struct table_config *tc;

	FUNC1(ch);
	ni = FUNC0(ch);
	tc = (struct table_config *)FUNC3(ni, idx);
	FUNC2(tc != NULL, ("Table with index %d not found", idx));

	return (&tc->no);
}