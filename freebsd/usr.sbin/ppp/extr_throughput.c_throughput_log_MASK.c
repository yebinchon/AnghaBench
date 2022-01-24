#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pppThroughput {int OctetsIn; int OctetsOut; int /*<<< orphan*/  BestOctetsPerSecondTime; int /*<<< orphan*/  BestOctetsPerSecond; scalar_t__ rolling; int /*<<< orphan*/  PacketsOut; int /*<<< orphan*/  PacketsIn; scalar_t__ uptime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (struct pppThroughput*) ; 

void
FUNC3(struct pppThroughput *t, int level, const char *title)
{
  if (t->uptime) {
    int secs_up;

    secs_up = FUNC2(t);
    if (title == NULL)
      title = "";
    FUNC1(level, "%s%sConnect time: %d secs: %llu octets in, %llu octets"
               " out\n", title, *title ? ": " : "", secs_up, t->OctetsIn,
               t->OctetsOut);
    FUNC1(level, "%s%s%llu packets in, %llu packets out\n",
               title, *title ? ": " : "",  t->PacketsIn, t->PacketsOut);
    if (secs_up == 0)
      secs_up = 1;
    if (t->rolling)
      FUNC1(level, " total %llu bytes/sec, peak %llu bytes/sec on %s",
                 (t->OctetsIn + t->OctetsOut) / secs_up, t->BestOctetsPerSecond,
                 FUNC0(&t->BestOctetsPerSecondTime));
    else
      FUNC1(level, " total %llu bytes/sec\n",
                 (t->OctetsIn + t->OctetsOut) / secs_up);
  }
}