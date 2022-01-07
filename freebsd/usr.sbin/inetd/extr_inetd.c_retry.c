
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_fd; struct servtab* se_next; } ;


 int ISMUX (struct servtab*) ;
 struct servtab* servtab ;
 int setup (struct servtab*) ;
 scalar_t__ timingout ;

__attribute__((used)) static void
retry(void)
{
 struct servtab *sep;

 timingout = 0;
 for (sep = servtab; sep; sep = sep->se_next)
  if (sep->se_fd == -1 && !ISMUX(sep))
   setup(sep);
}
