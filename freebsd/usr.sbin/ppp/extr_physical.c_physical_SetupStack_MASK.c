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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct physical {TYPE_1__ cfg; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int /*<<< orphan*/  MODEM_SPEED ; 
 int PHYSICAL_FORCE_ASYNC ; 
 int PHYSICAL_FORCE_SYNC ; 
 int PHYSICAL_FORCE_SYNCNOACF ; 
 int PHYSICAL_NOFORCE ; 
 int /*<<< orphan*/  acflayer ; 
 int /*<<< orphan*/  asynclayer ; 
 int /*<<< orphan*/  ccplayer ; 
 int /*<<< orphan*/  hdlclayer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  lqrlayer ; 
 int /*<<< orphan*/  natlayer ; 
 scalar_t__ FUNC3 (struct physical*) ; 
 int /*<<< orphan*/  FUNC4 (struct physical*) ; 
 int /*<<< orphan*/  protolayer ; 
 int /*<<< orphan*/  synclayer ; 
 int /*<<< orphan*/  tcpmsslayer ; 
 int /*<<< orphan*/  vjlayer ; 

void
FUNC5(struct physical *p, const char *who, int how)
{
  FUNC0(&p->link);
  if (how == PHYSICAL_FORCE_SYNC || how == PHYSICAL_FORCE_SYNCNOACF ||
      (how == PHYSICAL_NOFORCE && FUNC3(p)))
    FUNC1(&p->link, &synclayer);
  else {
    FUNC1(&p->link, &asynclayer);
    FUNC1(&p->link, &hdlclayer);
  }
  if (how != PHYSICAL_FORCE_SYNCNOACF)
    FUNC1(&p->link, &acflayer);
  FUNC1(&p->link, &protolayer);
  FUNC1(&p->link, &lqrlayer);
  FUNC1(&p->link, &ccplayer);
  FUNC1(&p->link, &vjlayer);
  FUNC1(&p->link, &tcpmsslayer);
#ifndef NONAT
  FUNC1(&p->link, &natlayer);
#endif
  if (how == PHYSICAL_FORCE_ASYNC && FUNC3(p)) {
    FUNC2(LogWARN, "Sync device setting ignored for ``%s'' device\n", who);
    p->cfg.speed = MODEM_SPEED;
  } else if (how == PHYSICAL_FORCE_SYNC && !FUNC3(p)) {
    FUNC2(LogWARN, "Async device setting ignored for ``%s'' device\n",
               who);
    FUNC4(p);
  }
}