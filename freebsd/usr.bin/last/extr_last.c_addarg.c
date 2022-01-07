
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; char* name; struct TYPE_4__* next; } ;
typedef TYPE_1__ ARG ;


 TYPE_1__* arglist ;
 TYPE_1__* malloc (int) ;
 int xo_errx (int,char*) ;

__attribute__((used)) static void
addarg(int type, char *arg)
{
 ARG *cur;

 if ((cur = malloc(sizeof(ARG))) == ((void*)0))
  xo_errx(1, "malloc failure");
 cur->next = arglist;
 cur->type = type;
 cur->name = arg;
 arglist = cur;
}
