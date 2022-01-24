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
struct prompt {int dummy; } ;
struct TYPE_4__ {char* OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct TYPE_3__ {char* OctetsPerSecond; scalar_t__* SampleOctets; } ;
struct pppThroughput {int SamplePeriod; int OctetsIn; int OctetsOut; int PacketsIn; int PacketsOut; char* BestOctetsPerSecond; int /*<<< orphan*/  BestOctetsPerSecondTime; TYPE_2__ out; TYPE_1__ in; int /*<<< orphan*/  uptime; scalar_t__ downtime; scalar_t__ nSample; } ;

/* Variables and functions */
 int THROUGHPUT_CURRENT ; 
 int THROUGHPUT_OVERALL ; 
 int THROUGHPUT_PEAK ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*,char*,...) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (struct pppThroughput*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct pppThroughput *t, int clear_type, struct prompt *prompt)
{
  if (clear_type & (THROUGHPUT_OVERALL|THROUGHPUT_CURRENT)) {
    int i;

    for (i = 0; i < t->SamplePeriod; i++)
      t->in.SampleOctets[i] = t->out.SampleOctets[i] = 0;
    t->nSample = 0;
  }

  if (clear_type & THROUGHPUT_OVERALL) {
    int divisor;

    if ((divisor = FUNC3(t)) == 0)
      divisor = 1;
    FUNC1(prompt, "overall cleared (was %6llu bytes/sec)\n",
                  (t->OctetsIn + t->OctetsOut) / divisor);
    t->OctetsIn = t->OctetsOut = t->PacketsIn = t->PacketsOut = 0;
    t->downtime = 0;
    FUNC4(&t->uptime);
  }

  if (clear_type & THROUGHPUT_CURRENT) {
    FUNC1(prompt, "current cleared (was %6llu bytes/sec in,"
                  " %6llu bytes/sec out)\n",
                  t->in.OctetsPerSecond, t->out.OctetsPerSecond);
    t->in.OctetsPerSecond = t->out.OctetsPerSecond = 0;
  }

  if (clear_type & THROUGHPUT_PEAK) {
    char *time_buf, *last;

    time_buf = FUNC0(&t->BestOctetsPerSecondTime);
    last = time_buf + FUNC2(time_buf);
    if (last > time_buf && *--last == '\n')
      *last = '\0';
    FUNC1(prompt, "peak    cleared (was %6llu bytes/sec on %s)\n",
                  t->BestOctetsPerSecond, time_buf);
    t->BestOctetsPerSecond = 0;
    FUNC4(&t->BestOctetsPerSecondTime);
  }
}