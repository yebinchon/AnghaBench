
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int p_proto; } ;


 size_t default_numprotos ;
 char** default_protos ;
 int err (int,char*,char const*) ;
 struct protoent* getprotobyname (char const*) ;
 int init_protos (size_t) ;
 size_t numprotos ;
 int * protos ;

__attribute__((used)) static int set_default_protos(void)
{
 struct protoent *prot;
 const char *pname;
 size_t pindex;

 init_protos(default_numprotos);

 for (pindex = 0; pindex < default_numprotos; pindex++) {
  pname = default_protos[pindex];
  prot = getprotobyname(pname);
  if (prot == ((void*)0))
   err(1, "getprotobyname: %s", pname);
  protos[pindex] = prot->p_proto;
 }
 numprotos = pindex;
 return (pindex);
}
