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
struct datalink {int /*<<< orphan*/  physical; struct datalink* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct bundle {struct datalink* links; int /*<<< orphan*/  ncp; TYPE_1__ choked; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *v)
{
  struct bundle *bundle = (struct bundle *)v;
  struct datalink *dl;

  FUNC0(LogPHASE, "Clearing choked output queue\n");
  FUNC3(&bundle->choked.timer);

  /*
   * Emergency time:
   *
   * We've had a full queue for PACKET_DEL_SECS seconds without being
   * able to get rid of any of the packets.  We've probably given up
   * on the redials at this point, and the queued data has almost
   * definitely been timed out by the layer above.  As this is preventing
   * us from reading the TUN_NAME device (we don't want to buffer stuff
   * indefinitely), we may as well nuke this data and start with a clean
   * slate !
   *
   * Unfortunately, this has the side effect of shafting any compression
   * dictionaries in use (causing the relevant RESET_REQ/RESET_ACK).
   */

  FUNC1(&bundle->ncp);
  for (dl = bundle->links; dl; dl = dl->next)
    FUNC2(dl->physical);
}