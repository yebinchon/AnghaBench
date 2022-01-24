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
struct ip_fw_chain {int dummy; } ;
struct ip_fw {struct ip_fw* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*,struct ip_fw*) ; 

void
FUNC2(struct ip_fw_chain *chain, struct ip_fw **head,
    struct ip_fw *rule)
{

	FUNC0(chain);

	/* Unlink rule from everywhere */
	FUNC1(chain, rule);

	rule->next = *head;
	*head = rule;
}