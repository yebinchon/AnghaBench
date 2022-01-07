
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int DMASEV ;

__attribute__((used)) static uint32_t
emit_sev(uint8_t *buf, uint32_t ev)
{

 buf[0] = DMASEV;
 buf[1] = (ev << 3);

 return (2);
}
