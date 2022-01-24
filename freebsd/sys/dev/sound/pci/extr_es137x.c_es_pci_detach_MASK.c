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
struct es_info {scalar_t__ num; int /*<<< orphan*/  lock; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  reg; int /*<<< orphan*/  regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/  ih; int /*<<< orphan*/  poll_timer; scalar_t__ polling; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct es_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct es_info*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct es_info*,int /*<<< orphan*/ ) ; 
 struct es_info* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	int r;
	struct es_info *es;

	r = FUNC9(dev);
	if (r)
		return (r);

	es = FUNC8(dev);

	if (es != NULL && es->num != 0) {
		FUNC0(es);
		es->polling = 0;
		FUNC6(&es->poll_timer);
		FUNC1(es);
		FUNC5(&es->poll_timer);
	}

	FUNC4(dev, es->irq, es->ih);
	FUNC3(dev, SYS_RES_IRQ, es->irqid, es->irq);
	FUNC3(dev, es->regtype, es->regid, es->reg);
	FUNC2(es->parent_dmat);
	FUNC10(es->lock);
	FUNC7(es, M_DEVBUF);

	return (0);
}