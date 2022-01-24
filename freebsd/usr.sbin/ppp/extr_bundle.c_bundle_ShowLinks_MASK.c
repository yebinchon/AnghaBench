#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_17__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct pppThroughput {int SamplePeriod; scalar_t__ downtime; TYPE_13__ out; TYPE_12__ in; } ;
struct TYPE_25__ {unsigned long long bandwidth; } ;
struct datalink {unsigned long long name; scalar_t__ state; TYPE_14__* physical; TYPE_6__ mp; struct datalink* next; } ;
struct cmdargs {int /*<<< orphan*/  prompt; TYPE_11__* bundle; } ;
struct TYPE_26__ {struct pppThroughput total; } ;
struct TYPE_27__ {TYPE_7__ stats; } ;
struct TYPE_28__ {TYPE_8__ link; } ;
struct TYPE_21__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_20__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_22__ {scalar_t__ rolling; TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_23__ {TYPE_3__ total; } ;
struct TYPE_24__ {TYPE_4__ stats; } ;
struct TYPE_19__ {TYPE_5__ link; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {TYPE_9__ mp; } ;
struct TYPE_16__ {TYPE_10__ ncp; struct datalink* links; } ;

/* Variables and functions */
 scalar_t__ DATALINK_OPEN ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct datalink*) ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC3 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct pppThroughput*) ; 

int
FUNC6(struct cmdargs const *arg)
{
  struct datalink *dl;
  struct pppThroughput *t;
  unsigned long long octets;
  int secs;

  for (dl = arg->bundle->links; dl; dl = dl->next) {
    octets = FUNC0(dl->physical->link.stats.total.in.OctetsPerSecond,
                 dl->physical->link.stats.total.out.OctetsPerSecond);

    FUNC4(arg->prompt, "Name: %s [%s, %s]",
                  dl->name, FUNC2(dl->physical->type), FUNC1(dl));
    if (dl->physical->link.stats.total.rolling && dl->state == DATALINK_OPEN)
      FUNC4(arg->prompt, " bandwidth %d, %llu bps (%llu bytes/sec)",
                    dl->mp.bandwidth ? dl->mp.bandwidth :
                                       FUNC3(dl->physical),
                    octets * 8, octets);
    FUNC4(arg->prompt, "\n");
  }

  t = &arg->bundle->ncp.mp.link.stats.total;
  octets = FUNC0(t->in.OctetsPerSecond, t->out.OctetsPerSecond);
  secs = t->downtime ? 0 : FUNC5(t);
  if (secs > t->SamplePeriod)
    secs = t->SamplePeriod;
  if (secs)
    FUNC4(arg->prompt, "Currently averaging %llu bps (%llu bytes/sec)"
                  " over the last %d secs\n", octets * 8, octets, secs);

  return 0;
}