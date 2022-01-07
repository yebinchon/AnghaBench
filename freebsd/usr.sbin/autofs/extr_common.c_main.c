
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char*) ;
 int log_errx (int,char*) ;
 int main_automount (int,char**) ;
 int main_automountd (int,char**) ;
 int main_autounmountd (int,char**) ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char **argv)
{
 char *cmdname;

 if (argv[0] == ((void*)0))
  log_errx(1, "NULL command name");

 cmdname = basename(argv[0]);

 if (strcmp(cmdname, "automount") == 0)
  return (main_automount(argc, argv));
 else if (strcmp(cmdname, "automountd") == 0)
  return (main_automountd(argc, argv));
 else if (strcmp(cmdname, "autounmountd") == 0)
  return (main_autounmountd(argc, argv));
 else
  log_errx(1, "binary name should be either \"automount\", "
      "\"automountd\", or \"autounmountd\"");
}
