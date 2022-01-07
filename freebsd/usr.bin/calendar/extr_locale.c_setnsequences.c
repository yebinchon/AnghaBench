
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int len; } ;


 TYPE_1__* nsequences ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;
 int strlen (char*) ;

void
setnsequences(char *seq)
{
 int i;
 char *p;

 p = seq;
 for (i = 0; i < 5; i++) {
  nsequences[i].name = p;
  if ((p = strchr(p, ' ')) == ((void*)0)) {

   for (i = 0; i < 5; i++) {
    nsequences[i].name = ((void*)0);
    nsequences[i].len = 0;
   }
   return;
  }
  *p = '\0';
  p++;
 }
 nsequences[i].name = p;

 for (i = 0; i < 5; i++) {
  nsequences[i].name = strdup(nsequences[i].name);
  nsequences[i].len = nsequences[i + 1].name - nsequences[i].name;
 }
 nsequences[i].name = strdup(nsequences[i].name);
 nsequences[i].len = strlen(nsequences[i].name);

 return;
}
