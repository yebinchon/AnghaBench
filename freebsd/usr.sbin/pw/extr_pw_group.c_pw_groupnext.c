
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct userconf {int dummy; } ;
typedef int gid_t ;


 int EXIT_SUCCESS ;
 int gr_gidpolicy (struct userconf*,int) ;
 int printf (char*,int ) ;

int
pw_groupnext(struct userconf *cnf, bool quiet)
{
 gid_t next = gr_gidpolicy(cnf, -1);

 if (quiet)
  return (next);
 printf("%ju\n", (uintmax_t)next);

 return (EXIT_SUCCESS);
}
