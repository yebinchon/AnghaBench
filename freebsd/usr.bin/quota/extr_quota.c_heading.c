
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int printf (char*,char*,char const*,...) ;
 char** qfextension ;
 int qflag ;

__attribute__((used)) static void
heading(int type, u_long id, const char *name, const char *tag)
{

 printf("Disk quotas for %s %s (%cid %lu): %s\n", qfextension[type],
     name, *qfextension[type], id, tag);
 if (!qflag && tag[0] == '\0') {
  printf("%-15s %7s %8s %7s %7s %6s %7s %6s%8s\n"
   , "Filesystem"
   , "usage"
   , "quota"
   , "limit"
   , "grace"
   , "files"
   , "quota"
   , "limit"
   , "grace"
  );
 }
}
