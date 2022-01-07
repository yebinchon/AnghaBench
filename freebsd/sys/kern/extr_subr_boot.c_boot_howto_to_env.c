
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int * ev; } ;


 int SETENV (int *,char*) ;
 TYPE_1__* howto_names ;

void
boot_howto_to_env(int howto)
{
 int i;

 for (i = 0; howto_names[i].ev != ((void*)0); i++)
  if (howto & howto_names[i].mask)
   SETENV(howto_names[i].ev, "YES");
}
