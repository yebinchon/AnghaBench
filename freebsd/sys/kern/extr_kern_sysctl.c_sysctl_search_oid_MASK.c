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
struct sysctl_oid {int oid_kind; int /*<<< orphan*/  oid_children; } ;

/* Variables and functions */
 int CTLTYPE ; 
 int CTLTYPE_NODE ; 
 int CTL_MAXNAME ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ *) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_oid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  oid_link ; 
 int /*<<< orphan*/  sysctl__children ; 

__attribute__((used)) static int
FUNC3(struct sysctl_oid **nodes, struct sysctl_oid *needle)
{
	int indx;

	FUNC2();
	indx = 0;
	while (indx < CTL_MAXNAME && indx >= 0) {
		if (nodes[indx] == NULL && indx == 0)
			nodes[indx] = FUNC0(&sysctl__children);
		else if (nodes[indx] == NULL)
			nodes[indx] = FUNC0(&nodes[indx - 1]->oid_children);
		else
			nodes[indx] = FUNC1(nodes[indx], oid_link);

		if (nodes[indx] == needle)
			return (indx + 1);

		if (nodes[indx] == NULL) {
			indx--;
			continue;
		}

		if ((nodes[indx]->oid_kind & CTLTYPE) == CTLTYPE_NODE) {
			indx++;
			continue;
		}
	}
	return (-1);
}