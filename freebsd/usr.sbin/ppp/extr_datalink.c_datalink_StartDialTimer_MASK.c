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
struct TYPE_5__ {int load; char* name; struct datalink* arg; int /*<<< orphan*/  func; } ;
struct TYPE_4__ {TYPE_2__ timer; } ;
struct datalink {scalar_t__ state; int /*<<< orphan*/  name; TYPE_1__ dial; } ;

/* Variables and functions */
 scalar_t__ DATALINK_OPENING ; 
 int DIAL_TIMEOUT ; 
 int /*<<< orphan*/  LogPHASE ; 
 int SECTICKS ; 
 int /*<<< orphan*/  datalink_OpenTimeout ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(struct datalink *dl, int Timeout)
{
  int result = Timeout;

  FUNC3(&dl->dial.timer);
  if (Timeout < 0)
    result = (FUNC1() % DIAL_TIMEOUT) + 1;
  dl->dial.timer.load = result ? result * SECTICKS : 1;
  dl->dial.timer.func = datalink_OpenTimeout;
  dl->dial.timer.name = "dial";
  dl->dial.timer.arg = dl;
  FUNC2(&dl->dial.timer);
  if (dl->state == DATALINK_OPENING)
    FUNC0(LogPHASE, "%s: Enter pause (%d) for redialing.\n",
               dl->name, result);
  return result;
}