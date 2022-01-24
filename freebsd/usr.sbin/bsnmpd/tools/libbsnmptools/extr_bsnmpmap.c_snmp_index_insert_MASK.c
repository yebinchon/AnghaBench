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
struct snmp_idxlist {int dummy; } ;
struct index {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snmp_idxlist*,struct index*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static int32_t
FUNC1(struct snmp_idxlist *headp, struct index *idx)
{
	if (headp == NULL || idx == NULL)
		return (-1);

	FUNC0(headp, idx, link);
	return (1);
}