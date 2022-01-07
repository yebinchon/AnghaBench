
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int * ev; } ;


 int FREE (char*) ;
 char* GETENV (int *) ;
 TYPE_1__* howto_names ;
 scalar_t__ strcasecmp (char*,char*) ;

int
boot_env_to_howto(void)
{
 int i, howto;
 char *val;

 for (howto = 0, i = 0; howto_names[i].ev != ((void*)0); i++) {
  val = GETENV(howto_names[i].ev);
  if (val != ((void*)0) && strcasecmp(val, "no") != 0)
   howto |= howto_names[i].mask;
  FREE(val);
 }
 return (howto);
}
