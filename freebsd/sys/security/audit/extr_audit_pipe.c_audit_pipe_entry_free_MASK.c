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
struct audit_pipe_entry {struct audit_pipe_entry* ape_record; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_AUDIT_PIPE_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct audit_pipe_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct audit_pipe_entry *ape)
{

	FUNC0(ape->ape_record, M_AUDIT_PIPE_ENTRY);
	FUNC0(ape, M_AUDIT_PIPE_ENTRY);
}