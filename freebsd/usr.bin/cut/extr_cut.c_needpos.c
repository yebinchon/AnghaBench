
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int memset (char*,int ,size_t) ;
 int * positions ;
 int * realloc (int *,size_t) ;

__attribute__((used)) static void
needpos(size_t n)
{
 static size_t npos;
 size_t oldnpos;


 if (n > npos) {
  oldnpos = npos;
  if (npos == 0)
   npos = n;
  while (n > npos)
   npos *= 2;
  if ((positions = realloc(positions, npos)) == ((void*)0))
   err(1, "realloc");
  memset((char *)positions + oldnpos, 0, npos - oldnpos);
 }
}
