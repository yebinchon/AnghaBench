
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_proto; } ;


 struct protoent* getprotobyname (char const*) ;
 scalar_t__ strlen (char const*) ;
 int warn (char*) ;

__attribute__((used)) static int
get_proto_type(const char *proto)
{
 struct protoent *pent;

 if (strlen(proto) == 0)
  return (0);
 pent = getprotobyname(proto);
 if (pent == ((void*)0)) {
  warn("getprotobyname");
  return (-1);
 }
 return (pent->p_proto);
}
