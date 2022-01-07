
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr, "usage: ugidfw add [subject [not] [uid uid] [gid gid]]"
     " [object [not] [uid uid] \\\n");
 fprintf(stderr, "    [gid gid]] mode arswxn\n");
 fprintf(stderr, "       ugidfw list\n");
 fprintf(stderr, "       ugidfw set rulenum [subject [not] [uid uid] [gid gid]]"
     " [object [not] \\\n");
 fprintf(stderr, "    [uid uid] [gid gid]] mode arswxn\n");
 fprintf(stderr, "       ugidfw remove rulenum\n");

 exit(1);
}
