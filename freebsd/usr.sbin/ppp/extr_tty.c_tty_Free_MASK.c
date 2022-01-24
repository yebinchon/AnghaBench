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
struct ttydevice {int dummy; } ;
struct physical {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 struct ttydevice* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttydevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct physical*) ; 

__attribute__((used)) static void
FUNC3(struct physical *p)
{
  struct ttydevice *dev = FUNC0(p->handler);

  FUNC2(p);	/* In case of emergency close()s */
  FUNC1(dev);
}