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
struct domainset {int dummy; } ;
struct domainlist {int dummy; } ;

/* Variables and functions */
 struct domainset* FUNC0 (struct domainlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct domainset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  domainset_zone ; 
 int /*<<< orphan*/  ds_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct domainset*) ; 

__attribute__((used)) static void
FUNC3(struct domainlist *list)
{
	struct domainset *set;

	while ((set = FUNC0(list)) != NULL) {
		FUNC1(set, ds_link);
		FUNC2(domainset_zone, set);
	}
}