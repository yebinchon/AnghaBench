
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct epat {int dummy; } ;
struct TYPE_4__ {int mode; int pat; } ;


 TYPE_1__* dpattern ;
 int dpattern_sz ;
 int dpatterns ;
 TYPE_1__* grep_realloc (TYPE_1__*,int) ;
 int grep_strdup (char const*) ;

__attribute__((used)) static void
add_dpattern(const char *pat, int mode)
{


 if (dpatterns == dpattern_sz) {
  dpattern_sz *= 2;
  dpattern = grep_realloc(dpattern, ++dpattern_sz *
      sizeof(struct epat));
 }
 dpattern[dpatterns].pat = grep_strdup(pat);
 dpattern[dpatterns].mode = mode;
 ++dpatterns;
}
