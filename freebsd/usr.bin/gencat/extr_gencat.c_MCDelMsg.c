
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int str; TYPE_2__ entries; } ;
struct TYPE_4__ {struct _msgT* lh_first; } ;
struct TYPE_6__ {TYPE_1__ msghead; } ;


 int LIST_REMOVE (struct _msgT*,int ) ;
 TYPE_3__* curSet ;
 int entries ;
 int error (char*) ;
 int free (int ) ;
 int warning (int *,char*) ;

void
MCDelMsg(int msgId)
{
 struct _msgT *msg;

 if (!curSet)
  error("you can't delete a message before defining the set");

 msg = curSet->msghead.lh_first;
 for (; msg != ((void*)0) && msg->msgId < msgId; msg = msg->entries.le_next);

 if (msg && msg->msgId == msgId) {
  free(msg->str);
  LIST_REMOVE(msg, entries);
  return;
 }
 warning(((void*)0), "specified msg doesn't exist");
}
