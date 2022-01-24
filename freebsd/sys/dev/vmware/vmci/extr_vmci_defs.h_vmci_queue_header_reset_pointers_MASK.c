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
struct vmci_queue_header {int /*<<< orphan*/  consumer_head; int /*<<< orphan*/  producer_tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct vmci_queue_header *q_header)
{

	FUNC1(&q_header->producer_tail, FUNC0(0));
	FUNC1(&q_header->consumer_head, FUNC0(0));
}