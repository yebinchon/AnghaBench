
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* NumStr (int,int *,int ) ;

__attribute__((used)) static const char *
protoname(int proto)
{
  static struct {
    int id;
    const char *txt;
  } cftypes[] = {

    { 1, "IPADDRS" },
    { 2, "COMPPROTO" },
    { 3, "IPADDR" },
    { 129, "PRIDNS" },
    { 130, "PRINBNS" },
    { 131, "SECDNS" },
    { 132, "SECNBNS" }
  };
  unsigned f;

  for (f = 0; f < sizeof cftypes / sizeof *cftypes; f++)
    if (cftypes[f].id == proto)
      return cftypes[f].txt;

  return NumStr(proto, ((void*)0), 0);
}
