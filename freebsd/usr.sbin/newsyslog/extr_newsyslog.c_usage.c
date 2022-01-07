
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{

 fprintf(stderr,
     "usage: newsyslog [-CFNPnrsv] [-a directory] [-d directory] [-f config_file]\n"
     "                 [-S pidfile] [-t timefmt] [[-R tagname] file ...]\n");
 exit(1);
}
