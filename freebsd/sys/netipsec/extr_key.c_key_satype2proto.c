
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IPPROTO_AH ;
 int IPPROTO_ESP ;
 int IPPROTO_IPCOMP ;
 int IPPROTO_TCP ;
 int IPSEC_PROTO_ANY ;






__attribute__((used)) static uint8_t
key_satype2proto(uint8_t satype)
{
 switch (satype) {
 case 130:
  return IPSEC_PROTO_ANY;
 case 132:
  return IPPROTO_AH;
 case 131:
  return IPPROTO_ESP;
 case 129:
  return IPPROTO_IPCOMP;
 case 128:
  return IPPROTO_TCP;
 default:
  return 0;
 }

}
