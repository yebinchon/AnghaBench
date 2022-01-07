
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct user {char* name; int uid; } ;
struct passwd {int pw_name; } ;


 int errx (int,char*) ;
 struct passwd* getpwuid (int) ;
 scalar_t__ malloc (int) ;
 int nusers ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 struct user* users ;
 int usrrehash () ;

__attribute__((used)) static struct user *
user(uid_t uid)
{
 struct user *usr;
 int i;
 struct passwd *pwd;

 while (1) {
  for (usr = users + (uid&(nusers - 1)), i = nusers; --i >= 0;
      usr--) {
   if (!usr->name) {
    usr->uid = uid;

    if (!(pwd = getpwuid(uid))) {
     if ((usr->name = (char *)malloc(7)))
      sprintf(usr->name,"#%d",uid);
    } else {
     if ((usr->name = (char *)
         malloc(strlen(pwd->pw_name) + 1)))
      strcpy(usr->name,pwd->pw_name);
    }
    if (!usr->name)
     errx(1, "allocate users");

    return usr;

   } else if (usr->uid == uid)
    return usr;

   if (usr <= users)
    usr = users + nusers;
  }
  usrrehash();
 }
}
