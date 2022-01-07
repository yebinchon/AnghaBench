
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 struct passwd* GETPWNAM (char const*) ;
 int chmod (int ,int) ;
 int close (int) ;
 int err (int,char*) ;
 int free (struct passwd*) ;
 int fsync (int) ;
 int printf (char*,char const*) ;
 int pw_copy (int,int,struct passwd*,struct passwd*) ;
 struct passwd* pw_dup (struct passwd*) ;
 int pw_fini () ;
 scalar_t__ pw_init (int *,char const*) ;
 int pw_lock () ;
 int pw_tempname () ;
 int pw_tmp (int) ;
 int rename (int ,char const*) ;

__attribute__((used)) static int
pw_nisupdate(const char * path, struct passwd * pwd, char const * user)
{
 int pfd, tfd;
 struct passwd *pw = ((void*)0);
 struct passwd *old_pw = ((void*)0);

 printf("===> %s\n", path);
 if (pwd != ((void*)0))
  pw = pw_dup(pwd);

 if (user != ((void*)0))
  old_pw = GETPWNAM(user);

 if (pw_init(((void*)0), path))
  err(1,"pw_init()");
 if ((pfd = pw_lock()) == -1) {
  pw_fini();
  err(1, "pw_lock()");
 }
 if ((tfd = pw_tmp(-1)) == -1) {
  pw_fini();
  err(1, "pw_tmp()");
 }
 if (pw_copy(pfd, tfd, pw, old_pw) == -1) {
  pw_fini();
  close(tfd);
  err(1, "pw_copy()");
 }
 fsync(tfd);
 close(tfd);
 if (chmod(pw_tempname(), 0644) == -1)
  err(1, "chmod()");
 if (rename(pw_tempname(), path) == -1)
  err(1, "rename()");

 free(pw);
 pw_fini();

 return (0);
}
