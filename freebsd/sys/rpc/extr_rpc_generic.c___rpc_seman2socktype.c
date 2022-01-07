
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;

int
__rpc_seman2socktype(int semantics)
{
 switch (semantics) {
 case 130:
  return SOCK_DGRAM;
 case 129:
  return SOCK_STREAM;
 case 128:
  return SOCK_RAW;
 default:
  break;
 }

 return -1;
}
