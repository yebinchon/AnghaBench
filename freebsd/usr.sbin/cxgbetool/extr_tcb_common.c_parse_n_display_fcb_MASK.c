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
typedef  int /*<<< orphan*/  _TCBVAR ;

/* Variables and functions */
 scalar_t__ PRNTSTYL_COMP ; 
 scalar_t__ PRNTSTYL_LIST ; 
 scalar_t__ PRNTSTYL_RAW ; 
 scalar_t__ PRNTSTYL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_fcb_info ; 
 scalar_t__ g_prntstyl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void
FUNC4(unsigned char *buf)
{
  _TCBVAR *tvp=g_fcb_info;

  FUNC1(tvp,buf);
  if (g_prntstyl==PRNTSTYL_VERBOSE ||
      g_prntstyl==PRNTSTYL_RAW) {
    FUNC3(0,buf,128); 
    FUNC2("\n"); 
  }

  if (g_prntstyl==PRNTSTYL_VERBOSE ||
      g_prntstyl==PRNTSTYL_LIST || 
      g_prntstyl==PRNTSTYL_COMP) {
    FUNC0(tvp,0);
  }
}