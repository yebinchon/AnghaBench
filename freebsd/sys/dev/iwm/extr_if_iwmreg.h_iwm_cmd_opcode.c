
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint8_t
iwm_cmd_opcode(uint32_t cmdid)
{
 return cmdid & 0xff;
}
