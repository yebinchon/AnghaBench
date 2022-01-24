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
struct ttydevice {int /*<<< orphan*/  hook; } ;
struct physical {int /*<<< orphan*/  fd; int /*<<< orphan*/  handler; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 
 struct ttydevice* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ttydevice*) ; 
 int FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC4(struct physical *p, const void *v, size_t n)
{
  struct ttydevice *dev = FUNC1(p->handler);

  if (FUNC2(dev))
    return FUNC0(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
  else
    return FUNC3(p->fd, v, n);
}