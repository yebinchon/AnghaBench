
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static __inline int
isocmp(const uint8_t cc1[], const uint8_t cc2[])
{
     return (cc1[0] == cc2[0] && cc1[1] == cc2[1]);
}
