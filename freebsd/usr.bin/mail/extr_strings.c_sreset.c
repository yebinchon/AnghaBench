
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strings {int s_nleft; int * s_topFree; int * s_nextFree; } ;


 size_t NSPACE ;
 int STRINGSIZE ;
 scalar_t__ noreset ;
 struct strings* stringdope ;

void
sreset(void)
{
 struct strings *sp;
 int index;

 if (noreset)
  return;
 index = 0;
 for (sp = &stringdope[0]; sp < &stringdope[NSPACE]; sp++) {
  if (sp->s_topFree == ((void*)0))
   continue;
  sp->s_nextFree = sp->s_topFree;
  sp->s_nleft = STRINGSIZE << index;
  index++;
 }
}
