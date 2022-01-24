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
struct physical {int /*<<< orphan*/  handler; } ;
struct etherdevice {int cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct etherdevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etherdevice*) ; 
 int /*<<< orphan*/  FUNC3 (struct physical*) ; 

__attribute__((used)) static void
FUNC4(struct physical *p)
{
  struct etherdevice *dev = FUNC1(p->handler);

  FUNC3(p);
  if (dev->cs != -1)
    FUNC0(dev->cs);
  FUNC2(dev);
}