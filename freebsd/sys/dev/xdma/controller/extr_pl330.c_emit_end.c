
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMAEND ;

__attribute__((used)) static uint32_t
emit_end(uint8_t *buf)
{

 buf[0] = DMAEND;

 return (1);
}
