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
typedef  int u_long ;
struct fileusage {int fu_id; int /*<<< orphan*/  fu_name; struct fileusage* fu_next; } ;

/* Variables and functions */
 int FUHASH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct fileusage*** fuhead ; 
 int* highid ; 
 struct fileusage* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (char*) ; 

struct fileusage *
FUNC6(u_long id, int type, char *name)
{
	struct fileusage *fup, **fhp;
	int len;

	if ((fup = FUNC3(id, type)))
		return (fup);
	if (name)
		len = FUNC5(name);
	else
		len = 10;
	if ((fup = (struct fileusage *)FUNC1(1, sizeof(*fup) + len)) == NULL)
		FUNC2(1, "out of memory for fileusage structures");
	fhp = &fuhead[type][id & (FUHASH - 1)];
	fup->fu_next = *fhp;
	*fhp = fup;
	fup->fu_id = id;
	if (id > highid[type])
		highid[type] = id;
	if (name) {
		FUNC0(name, fup->fu_name, len + 1);
	} else {
		FUNC4(fup->fu_name, "%lu", id);
	}
	return (fup);
}