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
struct mqueue {scalar_t__ top; } ;
struct link {struct mqueue* Queue; } ;

/* Variables and functions */
 struct mqueue* FUNC0 (struct link*) ; 
 int /*<<< orphan*/  FUNC1 (struct mqueue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct link *l)
{
  struct mqueue *queue, *highest;

  highest = FUNC0(l);
  for (queue = l->Queue; queue <= highest; queue++)
    while (queue->top)
      FUNC2(FUNC1(queue));
}