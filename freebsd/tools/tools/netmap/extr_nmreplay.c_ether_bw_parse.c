
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _qs {int dummy; } ;
struct _cfg {scalar_t__* d; } ;


 scalar_t__ U_PARSE_ERR ;
 scalar_t__ parse_bw (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
ether_bw_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 uint64_t bw;

 (void)q;
 if (strcmp(av[0], "ether") != 0)
  return 2;
 if (ac != 2)
  return 1;
 bw = parse_bw(av[ac - 1]);
 if (bw == U_PARSE_ERR)
  return 1;
 dst->d[0] = bw;
 return 0;
}
