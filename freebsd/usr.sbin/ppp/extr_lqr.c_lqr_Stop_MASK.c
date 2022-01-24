#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int method; int /*<<< orphan*/  timer; int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {TYPE_3__ lqm; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct physical {TYPE_2__ hdlc; TYPE_1__ link; } ;

/* Variables and functions */
 int LQM_ECHO ; 
 int LQM_LQR ; 
 int /*<<< orphan*/  LogLQM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct physical *physical, int method)
{
  if (method == LQM_LQR)
    FUNC1(LogLQM, "%s: Stop sending LQR, Use LCP ECHO instead.\n",
               physical->link.name);
  if (method == LQM_ECHO)
    FUNC1(LogLQM, "%s: Stop sending LCP ECHO.\n",
               physical->link.name);
  physical->hdlc.lqm.method &= ~method;
  if (physical->hdlc.lqm.method)
    FUNC0(physical->hdlc.lqm.owner);
  else
    FUNC2(&physical->hdlc.lqm.timer);
}