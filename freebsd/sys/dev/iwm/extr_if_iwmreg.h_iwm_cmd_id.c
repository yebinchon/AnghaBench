
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
iwm_cmd_id(uint8_t opcode, uint8_t groupid, uint8_t version)
{
 return opcode + (groupid << 8) + (version << 16);
}
