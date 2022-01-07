
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CTL_VALID (char const) ;

__attribute__((used)) static __inline unsigned int
ttydisc_findchar(const char *obstart, unsigned int oblen)
{
 const char *c = obstart;

 while (oblen--) {
  if (CTL_VALID(*c))
   break;
  c++;
 }

 return (c - obstart);
}
