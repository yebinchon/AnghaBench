
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwd2 ;
typedef int pwd1 ;


 int EX_OK ;
 int EX_USAGE ;
 int OFWO_MAXPWD ;
 int RPP_ECHO_OFF ;
 int RPP_REQUIRE_TTY ;
 int errx (int,char*) ;
 int ofw_optnode (int) ;
 int ofw_setprop (int,int ,char*,char*,scalar_t__) ;
 int printf (char*) ;
 int * readpassphrase (char*,char*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
ofwo_setpass(int fd)
{
 char pwd1[OFWO_MAXPWD + 1], pwd2[OFWO_MAXPWD + 1];

 if (readpassphrase("New password:", pwd1, sizeof(pwd1),
     RPP_ECHO_OFF | RPP_REQUIRE_TTY) == ((void*)0) ||
     readpassphrase("Retype new password:", pwd2, sizeof(pwd2),
     RPP_ECHO_OFF | RPP_REQUIRE_TTY) == ((void*)0))
  errx(EX_USAGE, "failed to get password.");
 if (strlen(pwd1) == 0) {
  printf("Password unchanged.\n");
  return (EX_OK);
 }
 if (strcmp(pwd1, pwd2) != 0) {
  printf("Mismatch - password unchanged.\n");
  return (EX_USAGE);
 }
 ofw_setprop(fd, ofw_optnode(fd), "security-password", pwd1,
     strlen(pwd1) + 1);
 return (EX_OK);
}
