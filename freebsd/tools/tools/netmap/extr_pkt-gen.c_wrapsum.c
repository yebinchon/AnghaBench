
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int htons (int) ;

__attribute__((used)) static uint16_t
wrapsum(uint32_t sum)
{
 sum = ~sum & 0xFFFF;
 return (htons(sum));
}
