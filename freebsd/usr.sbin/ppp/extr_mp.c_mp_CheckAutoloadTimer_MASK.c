#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ SamplePeriod; } ;
struct TYPE_10__ {TYPE_5__ total; } ;
struct TYPE_11__ {TYPE_2__ stats; } ;
struct TYPE_12__ {scalar_t__ period; } ;
struct TYPE_9__ {TYPE_4__ autoload; } ;
struct mp {TYPE_3__ link; int /*<<< orphan*/  bundle; TYPE_1__ cfg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp*) ; 
 int /*<<< orphan*/  mp_UpDown ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,struct mp*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int) ; 

void
FUNC6(struct mp *mp)
{
  if (mp->link.stats.total.SamplePeriod != mp->cfg.autoload.period) {
    FUNC3(&mp->link.stats.total);
    FUNC4(&mp->link.stats.total, mp->cfg.autoload.period);
    FUNC2(&mp->link.stats.total, mp_UpDown, mp);
  }

  if (FUNC0(mp->bundle))
    FUNC5(&mp->link.stats.total, "MP throughput", 1);
  else
    FUNC1(mp);
}