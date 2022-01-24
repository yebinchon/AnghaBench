#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_2__ {struct intr_irqsrc* isrc; } ;

/* Variables and functions */
 TYPE_1__** irq_map ; 
 size_t irq_map_count ; 
 int /*<<< orphan*/  irq_map_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct intr_irqsrc *
FUNC2(u_int res_id)
{
	struct intr_irqsrc *isrc;

	FUNC0(&irq_map_lock);
	if ((res_id >= irq_map_count) || (irq_map[res_id] == NULL)) {
		FUNC1(&irq_map_lock);
		return (NULL);
	}
	isrc = irq_map[res_id]->isrc;
	FUNC1(&irq_map_lock);
	return (isrc);
}