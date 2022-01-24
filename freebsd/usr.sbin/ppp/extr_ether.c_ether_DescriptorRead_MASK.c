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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct physical {int /*<<< orphan*/  dl; TYPE_1__ link; int /*<<< orphan*/  handler; } ;
struct fdescriptor {int dummy; } ;
struct etherdevice {scalar_t__ cs; scalar_t__ connected; } ;
struct bundle {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ CARRIER_LOST ; 
 int /*<<< orphan*/  CLOSE_NORMAL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct physical* FUNC2 (struct fdescriptor*) ; 
 struct etherdevice* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct etherdevice*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fdescriptor*,struct bundle*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (struct fdescriptor*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC8(struct fdescriptor *d, struct bundle *bundle,
                     const fd_set *fdset)
{
  struct physical *p = FUNC2(d);
  struct etherdevice *dev = FUNC3(p->handler);

  if (dev->cs >= 0 && FUNC0(dev->cs, fdset)) {
    FUNC4(dev);
    if (dev->connected == CARRIER_LOST) {
      FUNC5(LogPHASE, "%s: Device disconnected\n", p->link.name);
      FUNC1(p->dl, CLOSE_NORMAL);
      return;
    }
  }

  if (FUNC7(d, fdset))
    FUNC6(d, bundle, fdset);
}