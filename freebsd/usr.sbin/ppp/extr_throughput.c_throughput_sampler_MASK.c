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
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {unsigned long long* SampleOctets; unsigned long long OctetsPerSecond; } ;
struct TYPE_4__ {unsigned long long* SampleOctets; unsigned long long OctetsPerSecond; } ;
struct pppThroughput {int SamplePeriod; size_t nSample; unsigned long long OctetsIn; unsigned long long OctetsOut; unsigned long long BestOctetsPerSecond; int /*<<< orphan*/  Timer; TYPE_3__ callback; int /*<<< orphan*/  BestOctetsPerSecondTime; TYPE_2__ out; TYPE_1__ in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pppThroughput*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void *v)
{
  struct pppThroughput *t = (struct pppThroughput *)v;
  unsigned long long old;
  int uptime, divisor;
  unsigned long long octets;

  FUNC4(&t->Timer);

  uptime = FUNC1(t);
  divisor = uptime < t->SamplePeriod ? uptime + 1 : t->SamplePeriod;

  old = t->in.SampleOctets[t->nSample];
  t->in.SampleOctets[t->nSample] = t->OctetsIn;
  t->in.OctetsPerSecond = (t->in.SampleOctets[t->nSample] - old) / divisor;

  old = t->out.SampleOctets[t->nSample];
  t->out.SampleOctets[t->nSample] = t->OctetsOut;
  t->out.OctetsPerSecond = (t->out.SampleOctets[t->nSample] - old) / divisor;

  octets = t->in.OctetsPerSecond + t->out.OctetsPerSecond;
  if (t->BestOctetsPerSecond < octets) {
    t->BestOctetsPerSecond = octets;
    FUNC2(&t->BestOctetsPerSecondTime);
  }

  if (++t->nSample == t->SamplePeriod)
    t->nSample = 0;

  if (t->callback.fn != NULL && uptime >= t->SamplePeriod)
    (*t->callback.fn)(t->callback.data);

  FUNC3(&t->Timer);
}