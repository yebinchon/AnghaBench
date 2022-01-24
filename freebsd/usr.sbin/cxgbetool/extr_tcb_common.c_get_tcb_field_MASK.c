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
struct TYPE_3__ {int hi; int lo; int rawval; unsigned int val; } ;
typedef  TYPE_1__ _TCBVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,scalar_t__,scalar_t__) ; 

void
FUNC2(_TCBVAR *tvp,unsigned char *buf)
{
  FUNC0(tvp->hi-tvp->lo+1<=64);
  FUNC0(tvp->hi>=tvp->lo);

  tvp->rawval=FUNC1(buf,tvp->lo,tvp->hi);
  /* assume no compression and 32-bit value for now */
  tvp->val=(unsigned) (tvp->rawval & 0xFFFFFFFF);  


}