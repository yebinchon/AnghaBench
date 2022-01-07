
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct _msgT* le_next; } ;
struct _msgT {int msgId; int str; TYPE_1__ entries; } ;
struct TYPE_6__ {struct _msgT* lh_first; } ;
struct TYPE_5__ {TYPE_3__ msghead; } ;


 int LIST_INSERT_AFTER (struct _msgT*,struct _msgT*,int ) ;
 int LIST_INSERT_HEAD (TYPE_3__*,struct _msgT*,int ) ;
 int NL_MSGMAX ;
 TYPE_2__* curSet ;
 int entries ;
 int error (char*) ;
 int free (int ) ;
 int memset (struct _msgT*,char,int) ;
 struct _msgT* xmalloc (int) ;
 int xstrdup (char const*) ;

void
MCAddMsg(int msgId, const char *str)
{
 struct _msgT *p, *q;

 if (!curSet)
  error("can't specify a message when no set exists");

 if (msgId <= 0) {
  error("msgId's must be greater than zero");

 }
 if (msgId > NL_MSGMAX) {
  error("msgID exceeds limit");

 }

 p = curSet->msghead.lh_first;
 q = ((void*)0);
 for (; p != ((void*)0) && p->msgId < msgId; q = p, p = p->entries.le_next);

 if (p && p->msgId == msgId) {
  free(p->str);
 } else {
  p = xmalloc(sizeof(struct _msgT));
  memset(p, '\0', sizeof(struct _msgT));

  if (q == ((void*)0)) {
   LIST_INSERT_HEAD(&curSet->msghead, p, entries);
  } else {
   LIST_INSERT_AFTER(q, p, entries);
  }
 }

 p->msgId = msgId;
 p->str = xstrdup(str);
}
