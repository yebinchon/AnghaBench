
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** opname ;

const char *
filter_Op2Nam(unsigned op)
{
  if (op >= sizeof opname / sizeof opname[0])
    return "unknown";
  return opname[op];

}
