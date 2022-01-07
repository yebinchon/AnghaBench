
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int byteorder ;
 int htobe32 (int ) ;
 int htole32 (int ) ;

uint32_t
htote(uint32_t arg)
{

 if (byteorder == 4321)
  return (htobe32(arg));
 else if (byteorder == 1234)
  return (htole32(arg));
 else
  return (arg);
}
