
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsizes {scalar_t__* fsz_sz; scalar_t__* fsz_count; struct fsizes* fsz_next; } ;


 int FSZCNT ;
 struct fsizes* fsizes ;

__attribute__((used)) static void
initfsizes(void)
{
 struct fsizes *fp;
 int i;

 for (fp = fsizes; fp; fp = fp->fsz_next) {
  for (i = FSZCNT; --i >= 0;) {
   fp->fsz_count[i] = 0;
   fp->fsz_sz[i] = 0;
  }
 }
}
