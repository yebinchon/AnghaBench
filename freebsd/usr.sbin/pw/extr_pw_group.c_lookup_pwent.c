
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;


 int EX_NOUSER ;
 struct passwd* GETPWNAM (char const*) ;
 scalar_t__ atoi (char const*) ;
 int errx (int ,char*,char const*) ;
 struct passwd* getpwuid (int ) ;
 int isdigit (unsigned char) ;

__attribute__((used)) static struct passwd *
lookup_pwent(const char *user)
{
 struct passwd *pwd;

 if ((pwd = GETPWNAM(user)) == ((void*)0) &&
     (!isdigit((unsigned char)*user) ||
     (pwd = getpwuid((uid_t) atoi(user))) == ((void*)0)))
  errx(EX_NOUSER, "user `%s' does not exist", user);

 return (pwd);
}
