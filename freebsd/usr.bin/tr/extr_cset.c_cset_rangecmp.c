
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct csnode {scalar_t__ csn_min; scalar_t__ csn_max; } ;



__attribute__((used)) static __inline int
cset_rangecmp(struct csnode *t, wchar_t ch)
{

 if (ch < t->csn_min)
  return (-1);
 if (ch > t->csn_max)
  return (1);
 return (0);
}
