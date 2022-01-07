
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static uint32_t
udiff(uint32_t u, uint32_t v)
{
 return (u >= v ? u - v : v - u);
}
