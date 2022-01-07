
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** environ_pam ;
 int free (char*) ;
 scalar_t__ ok_to_export (char*) ;
 int setenv (char*,char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
export_pam_environment(void)
{
 char **pp;
 char *p;

 for (pp = environ_pam; *pp != ((void*)0); pp++) {
  if (ok_to_export(*pp)) {
   p = strchr(*pp, '=');
   *p = '\0';
   setenv(*pp, p + 1, 1);
  }
  free(*pp);
 }
}
