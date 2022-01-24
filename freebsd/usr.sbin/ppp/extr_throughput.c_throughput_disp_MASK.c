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
struct TYPE_4__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_3__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct pppThroughput {int OctetsIn; int OctetsOut; int SamplePeriod; scalar_t__ BestOctetsPerSecondTime; int /*<<< orphan*/  BestOctetsPerSecond; TYPE_2__ out; TYPE_1__ in; scalar_t__ downtime; scalar_t__ rolling; int /*<<< orphan*/  PacketsOut; int /*<<< orphan*/  PacketsIn; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*,char*,...) ; 
 int FUNC2 (struct pppThroughput*) ; 

void
FUNC3(struct pppThroughput *t, struct prompt *prompt)
{
  int secs_up, divisor;

  secs_up = FUNC2(t);
  FUNC1(prompt, "Connect time: %d:%02d:%02d", secs_up / 3600,
                (secs_up / 60) % 60, secs_up % 60);
  if (t->downtime)
    FUNC1(prompt, " - down at %s", FUNC0(&t->downtime));
  else
    FUNC1(prompt, "\n");

  divisor = secs_up ? secs_up : 1;
  FUNC1(prompt, "%llu octets in, %llu octets out\n",
                t->OctetsIn, t->OctetsOut);
  FUNC1(prompt, "%llu packets in, %llu packets out\n",
                t->PacketsIn, t->PacketsOut);
  if (t->rolling) {
    FUNC1(prompt, "  overall   %6llu bytes/sec\n",
                  (t->OctetsIn + t->OctetsOut) / divisor);
    FUNC1(prompt, "  %s %6llu bytes/sec in, %6llu bytes/sec out "
                  "(over the last %d secs)\n",
                  t->downtime ? "average  " : "currently",
                  t->in.OctetsPerSecond, t->out.OctetsPerSecond,
                  secs_up > t->SamplePeriod ? t->SamplePeriod : secs_up);
    FUNC1(prompt, "  peak      %6llu bytes/sec on %s",
                  t->BestOctetsPerSecond, FUNC0(&t->BestOctetsPerSecondTime));
  } else
    FUNC1(prompt, "Overall %llu bytes/sec\n",
                  (t->OctetsIn + t->OctetsOut) / divisor);
}