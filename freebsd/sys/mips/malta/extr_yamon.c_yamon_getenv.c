
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; int * name; } ;
typedef TYPE_1__ yamon_env_t ;


 TYPE_1__** fenvp ;
 int strcmp (char*,int *) ;

char *
yamon_getenv(char *name)
{
 char *value;
 yamon_env_t *p;

 value = ((void*)0);
 for (p = *fenvp; p->name != ((void*)0); ++p) {
     if (!strcmp(name, p->name)) {
  value = p->value;
  break;
     }
 }

 return (value);
}
