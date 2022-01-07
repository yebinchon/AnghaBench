
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct passwd {char* pw_name; } ;
struct group {char* gr_name; } ;


 int err (int,char*) ;
 int getegid () ;
 int geteuid () ;
 int getgid () ;
 struct group* getgrgid (int) ;
 char* getlogin () ;
 struct passwd* getpwuid (int) ;
 int getuid () ;
 int group (struct passwd*,int) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
pretty(struct passwd *pw)
{
 struct group *gr;
 u_int eid, rid;
 char *login;

 if (pw) {
  (void)printf("uid\t%s\n", pw->pw_name);
  (void)printf("groups\t");
  group(pw, 1);
 } else {
  if ((login = getlogin()) == ((void*)0))
   err(1, "getlogin");

  pw = getpwuid(rid = getuid());
  if (pw == ((void*)0) || strcmp(login, pw->pw_name))
   (void)printf("login\t%s\n", login);
  if (pw)
   (void)printf("uid\t%s\n", pw->pw_name);
  else
   (void)printf("uid\t%u\n", rid);

  if ((eid = geteuid()) != rid) {
   if ((pw = getpwuid(eid)))
    (void)printf("euid\t%s\n", pw->pw_name);
   else
    (void)printf("euid\t%u\n", eid);
  }
  if ((rid = getgid()) != (eid = getegid())) {
   if ((gr = getgrgid(rid)))
    (void)printf("rgid\t%s\n", gr->gr_name);
   else
    (void)printf("rgid\t%u\n", rid);
  }
  (void)printf("groups\t");
  group(((void*)0), 1);
 }
}
