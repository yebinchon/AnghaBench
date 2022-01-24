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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmci_queue_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_queue_header const*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_queue_header const*) ; 

__attribute__((used)) static inline void
FUNC2(const struct vmci_queue_header *produce_q_header,
    const struct vmci_queue_header *consume_q_header, uint64_t *producer_tail,
    uint64_t *consumer_head)
{

	if (producer_tail)
		*producer_tail =
		    FUNC1(produce_q_header);

	if (consumer_head)
		*consumer_head =
		    FUNC0(consume_q_header);
}