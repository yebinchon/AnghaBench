
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strings {char* s_topFree; int s_nleft; char* s_nextFree; } ;


 size_t NSPACE ;
 int STRINGSIZE ;
 int err (int,char*,int) ;
 int errx (int,char*) ;
 char* malloc (int) ;
 struct strings* stringdope ;

char *
salloc(int size)
{
 char *t;
 int s, index;
 struct strings *sp;

 s = size;
 s += (sizeof(char *) - 1);
 s &= ~(sizeof(char *) - 1);
 index = 0;
 for (sp = &stringdope[0]; sp < &stringdope[NSPACE]; sp++) {
  if (sp->s_topFree == ((void*)0) && (STRINGSIZE << index) >= s)
   break;
  if (sp->s_nleft >= s)
   break;
  index++;
 }
 if (sp >= &stringdope[NSPACE])
  errx(1, "String too large");
 if (sp->s_topFree == ((void*)0)) {
  index = sp - &stringdope[0];
  if ((sp->s_topFree = malloc(STRINGSIZE << index)) == ((void*)0))
   err(1, "No room for space %d", index);
  sp->s_nextFree = sp->s_topFree;
  sp->s_nleft = STRINGSIZE << index;
 }
 sp->s_nleft -= s;
 t = sp->s_nextFree;
 sp->s_nextFree += s;
 return (t);
}
