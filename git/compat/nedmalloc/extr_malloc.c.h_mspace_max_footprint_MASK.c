#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mspace ;
struct TYPE_5__ {size_t max_footprint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

size_t FUNC2(mspace msp) {
  size_t result = 0;
  mstate ms = (mstate)msp;
  if (FUNC1(ms)) {
    result = ms->max_footprint;
  }
  else {
    FUNC0(ms,ms);
  }
  return result;
}