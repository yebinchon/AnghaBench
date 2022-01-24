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
struct tcp_log_stailq {int dummy; } ;
struct tcp_log_mem {int dummy; } ;

/* Variables and functions */
 struct tcp_log_mem* FUNC0 (struct tcp_log_stailq*) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_log_stailq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_log_mem*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_log_mem*,int*) ; 
 int /*<<< orphan*/  tlm_queue ; 

__attribute__((used)) static void
FUNC4(struct tcp_log_stailq *head, int *count)
{
	struct tcp_log_mem *log_entry;

	/* Free the entries. */
	while ((log_entry = FUNC0(head)) != NULL) {
		FUNC1(head, tlm_queue);
		FUNC2(log_entry);
		FUNC3(log_entry, count);
	}
}