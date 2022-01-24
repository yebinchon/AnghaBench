#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * aka; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ _TCBVAR ;

/* Variables and functions */
 TYPE_1__* g_tcb_info ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 

_TCBVAR *
FUNC2(char *name)
{
  _TCBVAR *tvp=g_tcb_info;

  while (tvp->name!=NULL) {
    if      (FUNC1(name,tvp->name)) return tvp;
    else if (FUNC1(name,tvp->aka )) return tvp;
    tvp+=1;
  }
  FUNC0("lu_tcbvar: bad name %s\n",name);
  return NULL;
}