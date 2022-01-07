
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct _setT* le_next; } ;
struct _setT {int setId; int msghead; TYPE_1__ entries; } ;
struct TYPE_5__ {struct _setT* lh_first; } ;


 int LIST_INIT (int *) ;
 int LIST_INSERT_AFTER (struct _setT*,struct _setT*,int ) ;
 int LIST_INSERT_HEAD (TYPE_2__*,struct _setT*,int ) ;
 int NL_SETMAX ;
 struct _setT* curSet ;
 int entries ;
 int error (char*) ;
 int memset (struct _setT*,char,int) ;
 TYPE_2__ sethead ;
 struct _setT* xmalloc (int) ;

void
MCAddSet(int setId)
{
 struct _setT *p, *q;

 if (setId <= 0) {
  error("setId's must be greater than zero");

 }
 if (setId > NL_SETMAX) {
  error("setId exceeds limit");

 }

 p = sethead.lh_first;
 q = ((void*)0);
 for (; p != ((void*)0) && p->setId < setId; q = p, p = p->entries.le_next);

 if (p && p->setId == setId) {
  ;
 } else {
  p = xmalloc(sizeof(struct _setT));
  memset(p, '\0', sizeof(struct _setT));
  LIST_INIT(&p->msghead);

  p->setId = setId;

  if (q == ((void*)0)) {
   LIST_INSERT_HEAD(&sethead, p, entries);
  } else {
   LIST_INSERT_AFTER(q, p, entries);
  }
 }

 curSet = p;
}
