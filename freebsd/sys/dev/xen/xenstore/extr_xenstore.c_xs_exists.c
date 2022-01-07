
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int dummy; } ;


 int M_XENSTORE ;
 int free (char const**,int ) ;
 int xs_directory (struct xs_transaction,char const*,char const*,int*,char const***) ;

int
xs_exists(struct xs_transaction t, const char *dir, const char *node)
{
 const char **d;
 int error, dir_n;

 error = xs_directory(t, dir, node, &dir_n, &d);
 if (error)
  return (0);
 free(d, M_XENSTORE);
 return (1);
}
