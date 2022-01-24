#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int max; int min; } ;
struct TYPE_15__ {TYPE_6__ autoload; } ;
struct TYPE_10__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_9__ {int /*<<< orphan*/  OctetsPerSecond; } ;
struct TYPE_11__ {TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_12__ {TYPE_3__ total; } ;
struct TYPE_13__ {TYPE_4__ stats; } ;
struct mp {TYPE_8__* bundle; TYPE_7__ cfg; TYPE_5__ link; } ;
struct TYPE_16__ {int bandwidth; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DOWN ; 
 int /*<<< orphan*/  AUTO_UP ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3(void *v)
{
  struct mp *mp = (struct mp *)v;
  int percent;

  percent = FUNC0(mp->link.stats.total.in.OctetsPerSecond,
                mp->link.stats.total.out.OctetsPerSecond) * 800 /
            mp->bundle->bandwidth;
  if (percent >= mp->cfg.autoload.max) {
    FUNC2(LogDEBUG, "%d%% saturation - bring a link up ?\n", percent);
    FUNC1(mp->bundle, percent, AUTO_UP);
  } else if (percent <= mp->cfg.autoload.min) {
    FUNC2(LogDEBUG, "%d%% saturation - bring a link down ?\n", percent);
    FUNC1(mp->bundle, percent, AUTO_DOWN);
  }
}