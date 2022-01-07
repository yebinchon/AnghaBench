
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PRN_MODULO ;

__attribute__((used)) static unsigned get_prn(unsigned count)
{
 count = count * 1103515245 + 12345;
 return (count/65536) % PRN_MODULO;
}
