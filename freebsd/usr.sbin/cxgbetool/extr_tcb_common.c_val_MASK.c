#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int val; } ;
typedef  TYPE_1__ _TCBVAR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*) ; 

unsigned
FUNC1(char *name)
{
  _TCBVAR *tvp;

  tvp=FUNC0(name);
  return tvp->val;
}