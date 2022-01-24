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
struct mqueue {scalar_t__ len; } ;
struct link {struct mqueue* Queue; } ;

/* Variables and functions */
 struct mqueue* FUNC0 (struct link*) ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct mqueue*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct link *l)
{
  struct mqueue *queue, *highest;

  FUNC1(LogDEBUG, "link_SequenceQueue\n");

  highest = FUNC0(l);
  for (queue = l->Queue; queue < highest; queue++)
    while (queue->len)
      FUNC3(highest, FUNC2(queue));
}