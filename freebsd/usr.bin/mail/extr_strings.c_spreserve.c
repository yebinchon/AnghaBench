
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strings {int * s_topFree; } ;


 size_t NSPACE ;
 struct strings* stringdope ;

void
spreserve(void)
{
 struct strings *sp;

 for (sp = &stringdope[0]; sp < &stringdope[NSPACE]; sp++)
  sp->s_topFree = ((void*)0);
}
