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
struct execdevice {int fd_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct execdevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct execdevice*) ; 

__attribute__((used)) static void
FUNC3(struct physical *p)
{
  struct execdevice *dev = FUNC1(p->handler);

  if (dev->fd_out != -1)
    FUNC0(dev->fd_out);
  FUNC2(dev);
}