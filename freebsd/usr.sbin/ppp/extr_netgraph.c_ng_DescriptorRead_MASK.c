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
struct ngdevice {scalar_t__ cs; } ;
struct fdescriptor {int dummy; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 struct physical* FUNC1 (struct fdescriptor*) ; 
 struct ngdevice* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct physical*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fdescriptor*,struct bundle*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (struct fdescriptor*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC6(struct fdescriptor *d, struct bundle *bundle,
                  const fd_set *fdset)
{
  struct physical *p = FUNC1(d);
  struct ngdevice *dev = FUNC2(p->handler);

  if (dev->cs >= 0 && FUNC0(dev->cs, fdset))
    FUNC3(p, NULL, 0);

  if (FUNC5(d, fdset))
    FUNC4(d, bundle, fdset);
}