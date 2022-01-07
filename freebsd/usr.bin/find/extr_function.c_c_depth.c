
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int flags; int d_data; } ;
typedef TYPE_1__ PLAN ;
typedef TYPE_2__ OPTION ;


 int F_DEPTH ;
 int find_parsenum (TYPE_1__*,int ,char*,int *) ;
 int isdepth ;
 scalar_t__ isdigit (char) ;
 char* nextarg (TYPE_2__*,char***) ;
 TYPE_1__* palloc (TYPE_2__*) ;

PLAN *
c_depth(OPTION *option, char ***argvp)
{
 PLAN *new;
 char *str;

 new = palloc(option);

 str = **argvp;
 if (str && !(new->flags & F_DEPTH)) {

  if (*str == '+' || *str == '-')
   str++;

  if (*str == '+' || *str == '-')
   str++;
  if (isdigit(*str))
   new->flags |= F_DEPTH;
 }

 if (new->flags & F_DEPTH) {
  char *ndepth;

  ndepth = nextarg(option, argvp);
  new->d_data = find_parsenum(new, option->name, ndepth, ((void*)0));
 } else {
  isdepth = 1;
 }

 return new;
}
