#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct TYPE_3__ {scalar_t__ OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct pppThroughput {int SamplePeriod; int /*<<< orphan*/  uptime; scalar_t__ downtime; int /*<<< orphan*/  BestOctetsPerSecondTime; scalar_t__ BestOctetsPerSecond; TYPE_2__ out; TYPE_1__ in; scalar_t__ PacketsOut; scalar_t__ PacketsIn; scalar_t__ OctetsOut; scalar_t__ OctetsIn; scalar_t__ nSample; int /*<<< orphan*/  Timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pppThroughput*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct pppThroughput *t, const char *name, int rolling)
{
  int i;
  FUNC2(&t->Timer);

  for (i = 0; i < t->SamplePeriod; i++)
    t->in.SampleOctets[i] = t->out.SampleOctets[i] = 0;
  t->nSample = 0;
  t->OctetsIn = t->OctetsOut = t->PacketsIn = t->PacketsOut = 0;
  t->in.OctetsPerSecond = t->out.OctetsPerSecond = t->BestOctetsPerSecond = 0;
  FUNC1(&t->BestOctetsPerSecondTime);
  t->downtime = 0;
  FUNC1(&t->uptime);
  FUNC0(t, name, rolling);
}