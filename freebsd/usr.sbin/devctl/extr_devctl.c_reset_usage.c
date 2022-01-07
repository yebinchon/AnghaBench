
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
reset_usage(void)
{

 fprintf(stderr, "usage: devctl reset [-d] device\n");
 exit(1);
}
