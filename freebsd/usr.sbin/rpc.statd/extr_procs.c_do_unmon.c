
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ my_prog; scalar_t__ my_proc; scalar_t__ my_vers; int my_name; } ;
typedef TYPE_1__ my_id ;
struct TYPE_9__ {TYPE_2__* monList; } ;
struct TYPE_8__ {scalar_t__ notifyProg; scalar_t__ notifyProc; scalar_t__ notifyVers; struct TYPE_8__* next; int notifyHost; } ;
typedef TYPE_2__ MonList ;
typedef TYPE_3__ HostInfo ;


 int FALSE ;
 int SM_MAXSTRLEN ;
 int TRUE ;
 int free (TYPE_2__*) ;
 int strncasecmp (int ,int ,int ) ;

__attribute__((used)) static int do_unmon(HostInfo *hp, my_id *idp)
{
  MonList *lp, *next;
  MonList *last = ((void*)0);
  int result = FALSE;

  lp = hp->monList;
  while (lp)
  {
    if (!strncasecmp(idp->my_name, lp->notifyHost, SM_MAXSTRLEN)
      && (idp->my_prog == lp->notifyProg) && (idp->my_proc == lp->notifyProc)
      && (idp->my_vers == lp->notifyVers))
    {

      next = lp->next;
      if (last) last->next = next;
      else hp->monList = next;
      free(lp);
      lp = next;
      result = TRUE;
    }
    else
    {
      last = lp;
      lp = lp->next;
    }
  }
  return (result);
}
