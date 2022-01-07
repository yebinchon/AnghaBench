
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct _qs {int dummy; } ;
struct _cfg {scalar_t__* d; } ;


 scalar_t__ U_PARSE_ERR ;
 scalar_t__ parse_time (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
const_delay_parse(struct _qs *q, struct _cfg *dst, int ac, char *av[])
{
 uint64_t delay;

 (void)q;
 if (strncmp(av[0], "const", 5) != 0 && ac > 1)
  return 2;
 if (ac > 2)
  return 1;
 delay = parse_time(av[ac - 1]);
 if (delay == U_PARSE_ERR)
  return 1;
 dst->d[0] = delay;
 return 0;
}
