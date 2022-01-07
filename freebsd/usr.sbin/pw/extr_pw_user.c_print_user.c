
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wphone ;
typedef int uname ;
typedef char* uintmax_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct passwd {char* pw_name; scalar_t__ pw_expire; scalar_t__ pw_change; char* pw_dir; char* pw_class; char* pw_shell; scalar_t__ pw_gid; scalar_t__ pw_uid; int * pw_gecos; } ;
struct group {char* gr_name; int ** gr_mem; } ;
typedef int office ;
typedef int hphone ;


 int ENDGRENT () ;
 int EXIT_SUCCESS ;
 struct group* GETGRENT () ;
 struct group* GETGRGID (scalar_t__) ;
 int SETGRENT () ;
 int free (char*) ;
 struct tm* localtime (scalar_t__*) ;
 int memmove (char*,char*,int) ;
 int printf (char*,char*,...) ;
 char* pw_make (struct passwd*) ;
 char* pw_make_v7 (struct passwd*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int *,char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strtok (int *,char*) ;
 scalar_t__ toupper (unsigned char) ;

__attribute__((used)) static int
print_user(struct passwd * pwd, bool pretty, bool v7)
{
 int j;
 char *p;
 struct group *grp = GETGRGID(pwd->pw_gid);
 char uname[60] = "User &", office[60] = "[None]",
   wphone[60] = "[None]", hphone[60] = "[None]";
 char acexpire[32] = "[None]", pwexpire[32] = "[None]";
 struct tm * tptr;

 if (!pretty) {
  p = v7 ? pw_make_v7(pwd) : pw_make(pwd);
  printf("%s\n", p);
  free(p);
  return (EXIT_SUCCESS);
 }

 if ((p = strtok(pwd->pw_gecos, ",")) != ((void*)0)) {
  strlcpy(uname, p, sizeof(uname));
  if ((p = strtok(((void*)0), ",")) != ((void*)0)) {
   strlcpy(office, p, sizeof(office));
   if ((p = strtok(((void*)0), ",")) != ((void*)0)) {
    strlcpy(wphone, p, sizeof(wphone));
    if ((p = strtok(((void*)0), "")) != ((void*)0)) {
     strlcpy(hphone, p, sizeof(hphone));
    }
   }
  }
 }



 if ((p = strchr(uname, '&')) != ((void*)0)) {
  int l = strlen(pwd->pw_name);
  int m = strlen(p);

  memmove(p + l, p + 1, m);
  memmove(p, pwd->pw_name, l);
  *p = (char) toupper((unsigned char)*p);
 }
 if (pwd->pw_expire > (time_t)0 && (tptr = localtime(&pwd->pw_expire)) != ((void*)0))
  strftime(acexpire, sizeof acexpire, "%c", tptr);
 if (pwd->pw_change > (time_t)0 && (tptr = localtime(&pwd->pw_change)) != ((void*)0))
  strftime(pwexpire, sizeof pwexpire, "%c", tptr);
 printf("Login Name: %-15s   #%-12ju Group: %-15s   #%ju\n"
        " Full Name: %s\n"
        "      Home: %-26.26s      Class: %s\n"
        "     Shell: %-26.26s     Office: %s\n"
        "Work Phone: %-26.26s Home Phone: %s\n"
        "Acc Expire: %-26.26s Pwd Expire: %s\n",
        pwd->pw_name, (uintmax_t)pwd->pw_uid,
        grp ? grp->gr_name : "(invalid)", (uintmax_t)pwd->pw_gid,
        uname, pwd->pw_dir, pwd->pw_class,
        pwd->pw_shell, office, wphone, hphone,
        acexpire, pwexpire);
        SETGRENT();
 j = 0;
 while ((grp=GETGRENT()) != ((void*)0)) {
  int i = 0;
  if (grp->gr_mem != ((void*)0)) {
   while (grp->gr_mem[i] != ((void*)0)) {
    if (strcmp(grp->gr_mem[i], pwd->pw_name)==0) {
     printf(j++ == 0 ? "    Groups: %s" : ",%s", grp->gr_name);
     break;
    }
    ++i;
   }
  }
 }
 ENDGRENT();
 printf("%s", j ? "\n" : "");
 return (EXIT_SUCCESS);
}
