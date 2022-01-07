
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ OPTION ;


 int errx (int,char*,int ) ;

__attribute__((used)) static char *
nextarg(OPTION *option, char ***argvp)
{
 char *arg;

 if ((arg = **argvp) == ((void*)0))
  errx(1, "%s: requires additional arguments", option->name);
 (*argvp)++;
 return arg;
}
