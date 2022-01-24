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
struct tid_info {int dummy; } ;
struct named_object {int dummy; } ;
struct table_config {struct named_object no; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct tid_info*,struct table_config**) ; 

__attribute__((used)) static int
FUNC3(struct ip_fw_chain *ch, struct tid_info *ti,
    struct named_object **pno)
{
	struct table_config *tc;
	int error;

	FUNC1(ch);

	error = FUNC2(FUNC0(ch), ti, &tc);
	if (error != 0)
		return (error);

	*pno = &tc->no;
	return (0);
}