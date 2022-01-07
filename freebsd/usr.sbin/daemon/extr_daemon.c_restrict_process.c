
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;


 int LOGIN_SETALL ;
 int errx (int,char*,...) ;
 struct passwd* getpwnam (char const*) ;
 scalar_t__ setusercontext (int *,struct passwd*,int ,int ) ;

__attribute__((used)) static void
restrict_process(const char *user)
{
 struct passwd *pw = ((void*)0);

 pw = getpwnam(user);
 if (pw == ((void*)0))
  errx(1, "unknown user: %s", user);

 if (setusercontext(((void*)0), pw, pw->pw_uid, LOGIN_SETALL) != 0)
  errx(1, "failed to set user environment");
}
