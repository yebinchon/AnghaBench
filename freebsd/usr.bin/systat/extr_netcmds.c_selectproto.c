
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCP ;
 int UDP ;
 int protos ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int
selectproto(const char *proto)
{

 if (proto == ((void*)0) || streq(proto, "all"))
  protos = TCP | UDP;
 else if (streq(proto, "tcp"))
  protos = TCP;
 else if (streq(proto, "udp"))
  protos = UDP;
 else
  return (0);

 return (protos);
}
