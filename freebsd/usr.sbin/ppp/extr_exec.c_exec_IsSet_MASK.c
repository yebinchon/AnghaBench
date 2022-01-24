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
struct fdescriptor {int dummy; } ;
struct execdevice {scalar_t__ fd_out; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 struct execdevice* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct fdescriptor*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC4(struct fdescriptor *d, const fd_set *fdset)
{
  struct physical *p = FUNC1(d);
  struct execdevice *dev = FUNC2(p->handler);
  int result = dev->fd_out >= 0 && FUNC0(dev->fd_out, fdset);
  result += FUNC3(d, fdset);

  return result;
}