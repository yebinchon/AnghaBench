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
struct intr_irqsrc {int /*<<< orphan*/  isrc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 

__attribute__((used)) static void
FUNC1(void *arg)
{
	struct intr_irqsrc *isrc = arg;

	FUNC0(isrc->isrc_dev, isrc);
}