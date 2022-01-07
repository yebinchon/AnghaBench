
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* basename (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strdup (char const*) ;

__attribute__((used)) static void
usage(const char *progname)
{
 char *path;

 path = strdup(progname);

 fprintf(stderr, "usage: %s [-f format] [-o filename] filename [...]\n",
     basename(path));
 fprintf(stderr, "\tsupported output formats: shell, text\n");
 exit(1);
}
