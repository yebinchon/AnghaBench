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
struct TYPE_3__ {char* name; int aux; int hi; int lo; scalar_t__ comp; int val; scalar_t__ rawval; } ;
typedef  TYPE_1__ _TCBVAR ;

/* Variables and functions */
 scalar_t__ COMP_RCV_NXT ; 
 scalar_t__ COMP_TX_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(_TCBVAR *base_tvp,int aux)
{
  _TCBVAR *tvp=base_tvp;
  while (tvp->name!=NULL) {
    if (tvp->aux==0 || tvp->aux==aux) {
      if (tvp->hi-tvp->lo+1<=32) {
	FUNC0("  %4d:%4d %31s: %10u (0x%1x)",tvp->lo,tvp->hi,tvp->name,
	       (unsigned) tvp->rawval,(unsigned) tvp->rawval);
	if (COMP_TX_MAX==tvp->comp || COMP_RCV_NXT==tvp->comp) 
	  FUNC0("  -> %1u (0x%x)", tvp->val,tvp->val);
      } else {
	FUNC0("  %4d:%4d %31s: 0x%1llx",tvp->lo,tvp->hi,tvp->name,
	       tvp->rawval);
      }
      FUNC0("\n");
    }
    tvp+=1;
  }
}