
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;
 int test_client (int,char const**) ;
 int test_get_principal_name (int,char const**) ;
 int test_server (int,char const**) ;
 int usage () ;

int
main(int argc, const char **argv)
{

 if (argc < 2)
  usage();
 if (!strcmp(argv[1], "client"))
  test_client(argc - 1, argv + 1);
 else if (!strcmp(argv[1], "server"))
  test_server(argc - 1, argv + 1);
 else if (!strcmp(argv[1], "principal"))
  test_get_principal_name(argc - 1, argv + 1);
 else
  usage();

 return (0);
}
