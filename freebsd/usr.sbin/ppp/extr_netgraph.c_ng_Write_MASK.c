#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct physical {int /*<<< orphan*/  fd; TYPE_1__* dl; int /*<<< orphan*/  handler; } ;
struct ngdevice {int /*<<< orphan*/  hook; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DATALINK_DIAL 129 
#define  DATALINK_LOGIN 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 
 struct ngdevice* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ngdevice*,void const*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct physical *p, const void *v, size_t n)
{
  struct ngdevice *dev = FUNC1(p->handler);

  switch (p->dl->state) {
    case DATALINK_DIAL:
    case DATALINK_LOGIN:
      return FUNC2(dev, v) ? (ssize_t)n : -1;
  }
  return FUNC0(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
}