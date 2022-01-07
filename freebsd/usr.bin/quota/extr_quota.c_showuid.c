
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct passwd {char* pw_name; } ;


 int USRQUOTA ;
 struct passwd* getpwuid (int ) ;
 int showquotas (int ,int ,char const*) ;

__attribute__((used)) static int
showuid(u_long uid)
{
 struct passwd *pwd = getpwuid(uid);
 const char *name;

 if (pwd == ((void*)0))
  name = "(no account)";
 else
  name = pwd->pw_name;
 return(showquotas(USRQUOTA, uid, name));
}
