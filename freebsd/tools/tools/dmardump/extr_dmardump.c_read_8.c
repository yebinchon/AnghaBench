
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t
read_8(char *regs, size_t offset)
{
 return *(uint64_t *)(regs + offset);
}
