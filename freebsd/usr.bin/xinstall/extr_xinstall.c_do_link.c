
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpl ;
struct stat {int st_mode; int st_flags; } ;


 int EX_OSERR ;
 int MAXPATHLEN ;
 int NOCHANGEBITS ;
 int S_IFDIR ;
 int chflags (char const*,int) ;
 int err (int ,char*,char const*) ;
 int link (char const*,char const*) ;
 int printf (char*,char const*,char const*) ;
 int * quiet_mktemp (char*) ;
 int rename (char*,char const*) ;
 int rmdir (char const*) ;
 scalar_t__ safecopy ;
 int snprintf (char*,int,char*,char const*) ;
 int unlink (char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int
do_link(const char *from_name, const char *to_name,
    const struct stat *target_sb)
{
 char tmpl[MAXPATHLEN];
 int ret;

 if (safecopy && target_sb != ((void*)0)) {
  (void)snprintf(tmpl, sizeof(tmpl), "%s.inst.XXXXXX", to_name);

  if (quiet_mktemp(tmpl) == ((void*)0))
   err(EX_OSERR, "%s: mktemp", tmpl);
  ret = link(from_name, tmpl);
  if (ret == 0) {
   if (target_sb->st_mode & S_IFDIR && rmdir(to_name) ==
       -1) {
    unlink(tmpl);
    err(EX_OSERR, "%s", to_name);
   }





   if (verbose)
    printf("install: link %s -> %s\n",
        from_name, to_name);
   ret = rename(tmpl, to_name);





   (void)unlink(tmpl);
  }
  return (ret);
 } else {
  if (verbose)
   printf("install: link %s -> %s\n",
       from_name, to_name);
  return (link(from_name, to_name));
 }
}
