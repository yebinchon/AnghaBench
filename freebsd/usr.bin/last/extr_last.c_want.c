
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct utmpx {int ut_user; int ut_line; int ut_host; int ut_type; } ;
struct TYPE_3__ {int type; int name; struct TYPE_3__* next; } ;
typedef TYPE_1__ ARG ;


 int BOOT_TIME ;

 int NO ;

 int SHUTDOWN_TIME ;


 int YES ;
 TYPE_1__* arglist ;
 scalar_t__ snaptime ;
 int strcasecmp (int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
want(struct utmpx *bp)
{
 ARG *step;

 if (snaptime)
  return (NO);

 if (!arglist)
  return (YES);

 for (step = arglist; step; step = step->next)
  switch(step->type) {
  case 130:
   if (bp->ut_type == BOOT_TIME ||
       bp->ut_type == SHUTDOWN_TIME)
    return (YES);
   break;
  case 131:
   if (!strcasecmp(step->name, bp->ut_host))
    return (YES);
   break;
  case 129:
   if (!strcmp(step->name, bp->ut_line))
    return (YES);
   break;
  case 128:
   if (!strcmp(step->name, bp->ut_user))
    return (YES);
   break;
  }
 return (NO);
}
