
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ WHERE ;
struct TYPE_7__ {TYPE_1__* wtail; TYPE_1__* whead; } ;
typedef TYPE_2__ PERSON ;


 int err (int,int *) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static WHERE *
walloc(PERSON *pn)
{
 WHERE *w;

 if ((w = malloc(sizeof(WHERE))) == ((void*)0))
  err(1, ((void*)0));
 if (pn->whead == ((void*)0))
  pn->whead = pn->wtail = w;
 else {
  pn->wtail->next = w;
  pn->wtail = w;
 }
 w->next = ((void*)0);
 return(w);
}
