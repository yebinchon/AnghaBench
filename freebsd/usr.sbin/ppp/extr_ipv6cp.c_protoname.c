
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* NumStr (unsigned int,int *,int ) ;

__attribute__((used)) static const char *
protoname(unsigned proto)
{
  static const char *cftypes[] = { "IFACEID", "COMPPROTO" };

  if (proto > 0 && proto <= sizeof cftypes / sizeof *cftypes)
    return cftypes[proto - 1];

  return NumStr(proto, ((void*)0), 0);
}
