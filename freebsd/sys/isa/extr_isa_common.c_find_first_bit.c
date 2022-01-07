
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ffs (int ) ;

__attribute__((used)) static int
find_first_bit(uint32_t mask)
{
 return (ffs(mask) - 1);
}
