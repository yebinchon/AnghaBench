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
struct fsm_opt {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 

__attribute__((used)) static const char *
FUNC1(struct fsm_opt *o)
{
  static char disp[7];		/* Must be used immediately */

  FUNC0(disp, "win %d", (o->data[0]>>4) + 8);
  return disp;
}