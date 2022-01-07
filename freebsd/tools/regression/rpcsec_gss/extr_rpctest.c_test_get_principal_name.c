
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rpc_gss_principal_t ;


 int exit (int) ;
 int free (int ) ;
 int print_principal (int ) ;
 int printf (char*) ;
 scalar_t__ rpc_gss_get_principal_name (int *,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void
test_get_principal_name(int argc, const char **argv)
{
 const char *mechname, *name, *node, *domain;
 rpc_gss_principal_t principal;

 if (argc < 3 || argc > 5) {
  printf("usage: rpctest principal <mechname> <name> "
      "[<node> [<domain>] ]\n");
  exit(1);
 }

 mechname = argv[1];
 name = argv[2];
 node = ((void*)0);
 domain = ((void*)0);
 if (argc > 3) {
  node = argv[3];
  if (argc > 4)
   domain = argv[4];
 }

 if (rpc_gss_get_principal_name(&principal, mechname, name,
  node, domain)) {
  printf("succeeded:\n");
  print_principal(principal);
  free(principal);
 } else {
  printf("failed\n");
 }
}
