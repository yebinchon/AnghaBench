
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct _setT* lh_first; } ;
struct TYPE_4__ {struct _setT* le_next; } ;
struct _setT {int setId; int str; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct _msgT {int setId; int str; TYPE_2__ msghead; TYPE_1__ entries; } ;
struct TYPE_6__ {struct _setT* lh_first; } ;


 int LIST_REMOVE (struct _setT*,int ) ;
 int entries ;
 int free (int ) ;
 TYPE_3__ sethead ;
 int warning (int *,char*) ;

void
MCDelSet(int setId)
{
 struct _setT *set;
 struct _msgT *msg;

 set = sethead.lh_first;
 for (; set != ((void*)0) && set->setId < setId; set = set->entries.le_next);

 if (set && set->setId == setId) {

  msg = set->msghead.lh_first;
  while (msg) {
   free(msg->str);
   LIST_REMOVE(msg, entries);
  }

  LIST_REMOVE(set, entries);
  return;
 }
 warning(((void*)0), "specified set doesn't exist");
}
