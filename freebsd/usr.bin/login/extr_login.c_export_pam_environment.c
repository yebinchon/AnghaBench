
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int export (char*) ;
 int free (char*) ;
 char** pam_getenvlist (int ) ;
 int pamh ;

__attribute__((used)) static void
export_pam_environment(void)
{
 char **pam_env;
 char **pp;

 pam_env = pam_getenvlist(pamh);
 if (pam_env != ((void*)0)) {
  for (pp = pam_env; *pp != ((void*)0); pp++) {
   (void)export(*pp);
   free(*pp);
  }
 }
}
