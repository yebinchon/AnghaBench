
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef int mspace ;
typedef TYPE_2__* msegmentptr ;
typedef int flag_t ;
struct TYPE_7__ {char* base; size_t size; int sflags; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__ seg; } ;


 scalar_t__ CALL_MUNMAP (char*,size_t) ;
 int EXTERN_BIT ;
 int IS_MMAPPED_BIT ;
 int USAGE_ERROR_ACTION (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ ok_magic (TYPE_1__*) ;

size_t destroy_mspace(mspace msp) {
  size_t freed = 0;
  mstate ms = (mstate)msp;
  if (ok_magic(ms)) {
    msegmentptr sp = &ms->seg;
    while (sp != 0) {
      char* base = sp->base;
      size_t size = sp->size;
      flag_t flag = sp->sflags;
      sp = sp->next;
      if ((flag & IS_MMAPPED_BIT) && !(flag & EXTERN_BIT) &&
   CALL_MUNMAP(base, size) == 0)
 freed += size;
    }
  }
  else {
    USAGE_ERROR_ACTION(ms,ms);
  }
  return freed;
}
