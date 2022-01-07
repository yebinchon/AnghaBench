
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* progname ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "usage: %s [-f device] op...\n", progname);
 fprintf(stderr, "where op's are:\n");
 fprintf(stderr, "fact\t\tread factory PR segment\n");
 fprintf(stderr, "oem\t\tread OEM segment\n");
 fprintf(stderr, "woem value\twrite OEM segment\n");
 fprintf(stderr, "plr\t\tread PLR\n");
 fprintf(stderr, "wplr\t\twrite PLR\n");
 exit(-1);
}
