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
struct hci_command {char* command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC1(struct hci_command *category)
{
	struct hci_command	*c = NULL;

	for (c = category; c->command != NULL; c++)
		FUNC0(stdout, "\t%s\n", c->command);
}