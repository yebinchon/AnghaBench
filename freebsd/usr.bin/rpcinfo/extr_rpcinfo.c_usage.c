
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
 fprintf(stderr, "usage: rpcinfo [-m | -s] [host]\n");



 fprintf(stderr, "       rpcinfo -T netid host prognum [versnum]\n");
 fprintf(stderr, "       rpcinfo -l host prognum versnum\n");




 fprintf(stderr,
"       rpcinfo -a serv_address -T netid prognum [version]\n");
 fprintf(stderr, "       rpcinfo -b prognum versnum\n");
 fprintf(stderr, "       rpcinfo -d [-T netid] prognum versnum\n");
 exit(1);
}
