
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ziplen; int normal; int zipped; } ;
typedef TYPE_1__ suffixes_t ;


 int NUM_SUFFIXES ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,int ) ;
 int strlen (char*) ;
 TYPE_1__ const* suffixes ;

__attribute__((used)) static const suffixes_t *
check_suffix(char *file, int xlate)
{
 const suffixes_t *s;
 int len = strlen(file);
 char *sp;

 for (s = suffixes; s != suffixes + NUM_SUFFIXES; s++) {

  if (s->ziplen >= len)
   continue;
  sp = file + len - s->ziplen;
  if (strcmp(s->zipped, sp) != 0)
   continue;
  if (xlate)
   strcpy(sp, s->normal);
  return s;
 }
 return ((void*)0);
}
