
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int * pw_name; } ;
struct TYPE_2__ {int etcpath; } ;


 struct passwd* GETPWNAM (char const*) ;
 int close (int) ;
 TYPE_1__ conf ;
 int err (int,char*) ;
 int free (struct passwd*) ;
 int fsync (int) ;
 int pw_copy (int,int,struct passwd*,struct passwd*) ;
 struct passwd* pw_dup (struct passwd*) ;
 int pw_fini () ;
 scalar_t__ pw_init (int ,int *) ;
 int pw_lock () ;
 int pw_mkdb (int *) ;
 int pw_tmp (int) ;
 int pwdb_check () ;

__attribute__((used)) static int
pw_update(struct passwd * pwd, char const * user)
{
 struct passwd *pw = ((void*)0);
 struct passwd *old_pw = ((void*)0);
 int rc, pfd, tfd;

 if ((rc = pwdb_check()) != 0)
  return (rc);

 if (pwd != ((void*)0))
  pw = pw_dup(pwd);

 if (user != ((void*)0))
  old_pw = GETPWNAM(user);

 if (pw_init(conf.etcpath, ((void*)0)))
  err(1, "pw_init()");
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




 if (pw_mkdb(pw != ((void*)0) ? pw->pw_name : ((void*)0)) == -1) {
  pw_fini();
  err(1, "pw_mkdb()");
 }
 free(pw);
 pw_fini();

 return (0);
}
