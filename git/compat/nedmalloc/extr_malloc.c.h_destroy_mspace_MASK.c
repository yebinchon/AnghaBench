#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mstate ;
typedef  int /*<<< orphan*/  mspace ;
typedef  TYPE_2__* msegmentptr ;
typedef  int flag_t ;
struct TYPE_7__ {char* base; size_t size; int sflags; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__ seg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t) ; 
 int EXTERN_BIT ; 
 int IS_MMAPPED_BIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

size_t FUNC3(mspace msp) {
  size_t freed = 0;
  mstate ms = (mstate)msp;
  if (FUNC2(ms)) {
    msegmentptr sp = &ms->seg;
    while (sp != 0) {
      char* base = sp->base;
      size_t size = sp->size;
      flag_t flag = sp->sflags;
      sp = sp->next;
      if ((flag & IS_MMAPPED_BIT) && !(flag & EXTERN_BIT) &&
	  FUNC0(base, size) == 0)
	freed += size;
    }
  }
  else {
    FUNC1(ms,ms);
  }
  return freed;
}