
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int pat; } ;


 scalar_t__ EXCL_PAT ;
 scalar_t__ dinclude ;
 TYPE_1__* dpattern ;
 unsigned int dpatterns ;
 scalar_t__ fnmatch (int ,char const*,int ) ;

__attribute__((used)) static inline bool
dir_matching(const char *dname)
{
 bool ret;

 ret = dinclude ? 0 : 1;

 for (unsigned int i = 0; i < dpatterns; ++i) {
  if (dname != ((void*)0) && fnmatch(dpattern[i].pat, dname, 0) == 0)




   ret = (dpattern[i].mode != EXCL_PAT);
 }
 return (ret);
}
