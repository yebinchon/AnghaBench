
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "usage: %s\n",
     "logger [-46Ais] [-f file] [-h host] [-P port] [-p pri] [-t tag]\n"
     "              [-S addr:port] [message ...]"
     );
 exit(1);
}
