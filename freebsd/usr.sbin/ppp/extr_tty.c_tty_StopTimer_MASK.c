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
struct ttydevice {int /*<<< orphan*/  Timer; } ;
struct physical {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 struct ttydevice* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct physical *p)
{
  struct ttydevice *dev = FUNC0(p->handler);

  FUNC1(&dev->Timer);
}