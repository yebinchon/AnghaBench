
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
     "usage: devctl attach device\n"
     "       devctl detach [-f] device\n"
     "       devctl disable [-f] device\n"
     "       devctl enable device\n"
     "       devctl suspend device\n"
     "       devctl resume device\n"
     "       devctl set driver [-f] device driver\n"
     "       devctl clear driver [-f] device\n"
     "       devctl rescan device\n"
     "       devctl delete [-f] device\n"
     "       devctl freeze\n"
     "       devctl thaw\n"
     "       devctl reset [-d] device\n"
     );
 exit(1);
}
