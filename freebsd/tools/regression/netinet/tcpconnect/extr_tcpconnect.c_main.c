
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int tcpconnect_client (int,char**) ;
 int tcpconnect_server (int,char**) ;
 int usage () ;

int
main(int argc, char *argv[])
{

 if (argc < 2)
  usage();

 if (strcmp(argv[1], "server") == 0)
  tcpconnect_server(argc - 2, argv + 2);
 else if (strcmp(argv[1], "client") == 0)
  tcpconnect_client(argc - 2, argv + 2);
 else
  usage();

 exit(0);
}
