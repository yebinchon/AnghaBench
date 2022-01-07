
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct epat {int dummy; } ;
struct TYPE_4__ {int mode; int pat; } ;


 TYPE_1__* fpattern ;
 int fpattern_sz ;
 int fpatterns ;
 TYPE_1__* grep_realloc (TYPE_1__*,int) ;
 int grep_strdup (char const*) ;

__attribute__((used)) static void
add_fpattern(const char *pat, int mode)
{


 if (fpatterns == fpattern_sz) {
  fpattern_sz *= 2;
  fpattern = grep_realloc(fpattern, ++fpattern_sz *
      sizeof(struct epat));
 }
 fpattern[fpatterns].pat = grep_strdup(pat);
 fpattern[fpatterns].mode = mode;
 ++fpatterns;
}
