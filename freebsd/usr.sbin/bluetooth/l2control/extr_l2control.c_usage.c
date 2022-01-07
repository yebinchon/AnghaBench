
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
 fprintf(stderr, "Usage: l2control [-hn] -a local cmd [params ..]\n");
 fprintf(stderr, "Where:\n");
 fprintf(stderr, "  -a local   Specify local device to connect to\n");
 fprintf(stderr, "  -h         Display this message\n");
 fprintf(stderr, "  -n         Show addresses as numbers\n");
 fprintf(stderr, "  cmd        Supported command " "(see l2control help)\n");

 fprintf(stderr, "  params     Optional command parameters\n");
 exit(255);
}
