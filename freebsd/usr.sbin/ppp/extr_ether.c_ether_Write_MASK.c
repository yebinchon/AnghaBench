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
struct physical {int /*<<< orphan*/  fd; int /*<<< orphan*/  handler; } ;
struct etherdevice {int /*<<< orphan*/  hook; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 
 struct etherdevice* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC2(struct physical *p, const void *v, size_t n)
{
  struct etherdevice *dev = FUNC1(p->handler);

  return FUNC0(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
}