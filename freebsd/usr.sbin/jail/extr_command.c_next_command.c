
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct cfjail {int flags; int* comparam; TYPE_1__* comstring; TYPE_2__** intparams; } ;
typedef enum intparam { ____Placeholder_intparam } intparam ;
struct TYPE_10__ {int flags; int val; } ;
struct TYPE_9__ {scalar_t__ len; } ;


 int IP_COMMAND ;
 int IP_EXEC_CREATED ;
 int IP_EXEC_POSTSTART ;
 int IP_EXEC_PRESTART ;
 int IP_EXEC_START ;






 int JF_FAILED ;
 int JF_FROM_RUNQ ;
 int JF_STOP ;
 int PF_REV ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_PREV (TYPE_1__*,int ,int ) ;
 int bool_param (TYPE_2__*) ;
 int cfstrings ;
 TYPE_1__ dummystring ;
 int failed (struct cfjail*) ;
 scalar_t__ paralimit ;
 int requeue (struct cfjail*,int *) ;
 int requeue_head (struct cfjail*,int *) ;
 int run_command (struct cfjail*) ;
 int runnable ;
 int tq ;

int
next_command(struct cfjail *j)
{
 enum intparam comparam;
 int create_failed, stopping;

 if (paralimit == 0) {
  if (j->flags & JF_FROM_RUNQ)
   requeue_head(j, &runnable);
  else
   requeue(j, &runnable);
  return 1;
 }
 j->flags &= ~JF_FROM_RUNQ;
 create_failed = (j->flags & (JF_STOP | JF_FAILED)) == JF_FAILED;
 stopping = (j->flags & JF_STOP) != 0;
 comparam = *j->comparam;
 for (;;) {
  if (j->comstring == ((void*)0)) {
   j->comparam += create_failed ? -1 : 1;
   switch ((comparam = *j->comparam)) {
   case 129:
    return 0;
   case 133:
    if (!bool_param(j->intparams[133]))
     continue;
    j->comstring = &dummystring;
    break;
   case 132:
    if (!bool_param(j->intparams[132]))
     continue;
    j->comstring = &dummystring;
    break;
   case 131:
    if (!bool_param(j->intparams[131]))
     continue;
    j->comstring = &dummystring;
    break;
   case 128:
   case 130:
    j->comstring = &dummystring;
    break;
   default:
    if (j->intparams[comparam] == ((void*)0))
     continue;
    j->comstring = create_failed || (stopping &&
        (j->intparams[comparam]->flags & PF_REV))
        ? TAILQ_LAST(&j->intparams[comparam]->val,
     cfstrings)
        : TAILQ_FIRST(&j->intparams[comparam]->val);
   }
  } else {
   j->comstring = j->comstring == &dummystring ? ((void*)0) :
       create_failed || (stopping &&
       (j->intparams[comparam]->flags & PF_REV))
       ? TAILQ_PREV(j->comstring, cfstrings, tq)
       : TAILQ_NEXT(j->comstring, tq);
  }
  if (j->comstring == ((void*)0) || j->comstring->len == 0 ||
      (create_failed && (comparam == IP_EXEC_PRESTART ||
      comparam == IP_EXEC_CREATED || comparam == IP_EXEC_START ||
      comparam == IP_COMMAND || comparam == IP_EXEC_POSTSTART)))
   continue;
  switch (run_command(j)) {
  case -1:
   failed(j);

  case 1:
   return 1;
  }
 }
}
