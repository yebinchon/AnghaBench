
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_ISUID ;
 int fpath ;
 scalar_t__ stat (int ,struct stat*) ;
 int warn (char*,char*,int ) ;
 int warnx (char*,char*,char*) ;

__attribute__((used)) static void
confirm_sugid(char *test_case, int asroot, int injail)
{
 struct stat sb;

 if (stat(fpath, &sb) < 0) {
  warn("%s stat(%s)", test_case, fpath);
  return;
 }
 if (asroot) {
  if (!(sb.st_mode & S_ISUID))
   warnx("%s(root, %s): !SUID", test_case, injail ?
       "jail" : "!jail");
 } else {
  if (sb.st_mode & S_ISUID)
   warnx("%s(!root, %s): SUID", test_case, injail ?
       "jail" : "!jail");
 }
}
