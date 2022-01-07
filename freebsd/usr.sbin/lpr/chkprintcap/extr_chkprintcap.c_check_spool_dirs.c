
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirlist {int printer; int path; } ;


 struct dirlist* LIST_FIRST (int *) ;
 struct dirlist* LIST_NEXT (struct dirlist*,int ) ;
 int dirlist ;
 scalar_t__ equal (struct dirlist*,struct dirlist*) ;
 int link ;
 int problems ;
 scalar_t__ strcmp (int ,int ) ;
 int warnx (char*,int ,int ,int ,...) ;

__attribute__((used)) static void
check_spool_dirs(void)
{
 struct dirlist *dp, *dp2;

 for (dp = LIST_FIRST(&dirlist); dp; dp = dp2) {
  dp2 = LIST_NEXT(dp, link);

  if (dp2 != ((void*)0) && equal(dp, dp2)) {
   ++problems;
   if (strcmp(dp->path, dp2->path) == 0) {
    warnx("%s and %s share the same spool, %s",
          dp->printer, dp2->printer, dp->path);
   } else {
    warnx("%s (%s) and %s (%s) are the same "
          "directory", dp->path, dp->printer,
          dp2->path, dp2->printer);
   }
   continue;
  }

 }
}
