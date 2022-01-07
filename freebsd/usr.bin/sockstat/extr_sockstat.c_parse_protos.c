
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_proto_type (char*) ;
 int init_protos (int ) ;
 int numprotos ;
 int* protos ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
parse_protos(char *protospec)
{
 char *prot;
 int proto_type, proto_index;

 if (protospec == ((void*)0))
  return (-1);

 init_protos(0);
 proto_index = 0;
 while ((prot = strsep(&protospec, ",")) != ((void*)0)) {
  if (strlen(prot) == 0)
   continue;
  proto_type = get_proto_type(prot);
  if (proto_type != -1)
   protos[proto_index++] = proto_type;
 }
 numprotos = proto_index;
 return (proto_index);
}
