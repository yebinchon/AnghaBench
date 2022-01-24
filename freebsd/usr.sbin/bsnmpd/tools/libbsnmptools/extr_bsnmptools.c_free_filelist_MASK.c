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
struct snmp_toolinfo {int /*<<< orphan*/  filelist; } ;
struct fname {struct fname* name; } ;

/* Variables and functions */
 struct fname* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fname*) ; 
 int /*<<< orphan*/  link ; 

void
FUNC3(struct snmp_toolinfo *snmptoolctx)
{
	struct fname *f;

	if (snmptoolctx == NULL)
		return; /* XXX error handling */

	while ((f = FUNC0(&snmptoolctx->filelist)) != NULL) {
		FUNC1(&snmptoolctx->filelist, link);
		if (f->name)
			FUNC2(f->name);
		FUNC2(f);
	}
}