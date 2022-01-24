#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int load; struct cbcp* arg; int /*<<< orphan*/  func; } ;
struct TYPE_4__ {TYPE_2__ timer; } ;
struct cbcp {TYPE_1__ fsm; } ;

/* Variables and functions */
 int SECTICKS ; 
 int /*<<< orphan*/  cbcp_Timeout ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2(struct cbcp *cbcp, int timeout)
{
  FUNC1(&cbcp->fsm.timer);
  cbcp->fsm.timer.func = cbcp_Timeout;
  cbcp->fsm.timer.name = "cbcp";
  cbcp->fsm.timer.load = timeout * SECTICKS;
  cbcp->fsm.timer.arg = cbcp;
  FUNC0(&cbcp->fsm.timer);
}