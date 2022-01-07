
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LS_DIRTY ;
 int linestate ;
 char* skipcomment (char const*) ;

__attribute__((used)) static const char *
skipline(const char *cp)
{
 const char *pcp;
 if (*cp != '\0')
  linestate = LS_DIRTY;
 while (*cp != '\0') {
  cp = skipcomment(pcp = cp);
  if (pcp == cp)
   cp++;
 }
 return (cp);
}
