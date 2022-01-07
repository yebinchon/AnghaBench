
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;






 int SADB_SATYPE_AH ;
 int SADB_SATYPE_ESP ;
 int SADB_X_SATYPE_IPCOMP ;
 int SADB_X_SATYPE_TCPSIGNATURE ;

__attribute__((used)) static uint8_t
key_proto2satype(uint8_t proto)
{
 switch (proto) {
 case 131:
  return SADB_SATYPE_AH;
 case 130:
  return SADB_SATYPE_ESP;
 case 129:
  return SADB_X_SATYPE_IPCOMP;
 case 128:
  return SADB_X_SATYPE_TCPSIGNATURE;
 default:
  return 0;
 }

}
