
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_lines; } ;
typedef int FILE ;


 int LINESIZE ;
 int gethfield (int *,char*,int,char**) ;
 char* ishfield (char*,char*,char const*) ;
 scalar_t__ readline (int *,char*,int) ;
 char* save2str (char*,char*) ;
 int * setinput (struct message*) ;

char *
hfield(const char *field, struct message *mp)
{
 FILE *ibuf;
 char linebuf[LINESIZE];
 int lc;
 char *hfield;
 char *colon, *oldhfield = ((void*)0);

 ibuf = setinput(mp);
 if ((lc = mp->m_lines - 1) < 0)
  return (((void*)0));
 if (readline(ibuf, linebuf, LINESIZE) < 0)
  return (((void*)0));
 while (lc > 0) {
  if ((lc = gethfield(ibuf, linebuf, lc, &colon)) < 0)
   return (oldhfield);
  if ((hfield = ishfield(linebuf, colon, field)) != ((void*)0))
   oldhfield = save2str(hfield, oldhfield);
 }
 return (oldhfield);
}
