
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
     "usage: kttcp -r [-b sockbufsize] [-p port] [-q] [-v]\n"
     "                [-4] [-6]\n"
     "       kttcp -t [-b sockbufsize] [-n bytes] [-q] [-v] [-p port]\n"
     "                [-4] [-6] host\n"
 );
 exit(1);
}
