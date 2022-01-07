
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fname ;
typedef int FILE ;


 int PATH_MAX ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 char* getenv (char*) ;
 char* option_source ;
 int scan_profile (int *) ;
 int snprintf (char*,int,char*,char const*,...) ;

void
set_profile(const char *profile_name)
{
    FILE *f;
    char fname[PATH_MAX];
    static char prof[] = ".indent.pro";

    if (profile_name == ((void*)0))
 snprintf(fname, sizeof(fname), "%s/%s", getenv("HOME"), prof);
    else
 snprintf(fname, sizeof(fname), "%s", profile_name + 2);
    if ((f = fopen(option_source = fname, "r")) != ((void*)0)) {
 scan_profile(f);
 (void) fclose(f);
    }
    if ((f = fopen(option_source = prof, "r")) != ((void*)0)) {
 scan_profile(f);
 (void) fclose(f);
    }
    option_source = "Command line";
}
