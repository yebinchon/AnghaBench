
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;


 int LogWARN ;
 int PHYS_DIRECT ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char const*) ;
 int log_Close () ;
 int log_Printf (int ,char*,char const*,char const*) ;
 int stderr ;
 char* system_IsValid (char const*,struct prompt*,int) ;

__attribute__((used)) static void
CheckLabel(const char *label, struct prompt *prompt, int mode)
{
  const char *err;

  if ((err = system_IsValid(label, prompt, mode)) != ((void*)0)) {
    fprintf(stderr, "%s: %s\n", label, err);
    if (mode == PHYS_DIRECT)
      log_Printf(LogWARN, "Label %s rejected -direct connection: %s\n",
                 label, err);
    log_Close();
    exit(1);
  }
}
