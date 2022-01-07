
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * opname ;
 int strcasecmp (char const*,int ) ;

__attribute__((used)) static unsigned
filter_Nam2Op(const char *cp)
{
  unsigned op;

  for (op = sizeof opname / sizeof opname[0] - 1; op; op--)
    if (!strcasecmp(cp, opname[op]))
      break;

  return op;
}
