
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
"Usage: bthidcontrol options command\n" "Where options are:\n"

"	-a bdaddr	specify bdaddr\n" "	-c file		specify path to the bthidd config file\n" "	-H file		specify path to the bthidd HIDs file\n" "	-h		display usage and quit\n" "	-v		be verbose\n" "	command		one of the supported commands\n");





 exit(255);
}
