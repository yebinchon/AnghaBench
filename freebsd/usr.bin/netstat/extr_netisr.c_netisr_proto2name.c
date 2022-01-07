
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {size_t snp_proto; char const* snp_name; } ;


 TYPE_1__* proto_array ;
 size_t proto_array_len ;

__attribute__((used)) static const char *
netisr_proto2name(u_int proto)
{
 u_int i;

 for (i = 0; i < proto_array_len; i++) {
  if (proto_array[i].snp_proto == proto)
   return (proto_array[i].snp_name);
 }
 return ("unknown");
}
