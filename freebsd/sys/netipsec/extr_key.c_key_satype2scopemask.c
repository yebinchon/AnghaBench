
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ IPSEC_POLICYSCOPE_ANY ;

__attribute__((used)) static uint8_t
key_satype2scopemask(uint8_t satype)
{

 if (satype == IPSEC_POLICYSCOPE_ANY)
  return (0xff);
 return (satype);
}
