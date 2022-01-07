
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 hw_index_to_key(u32 ind)
{
 return (ind >> 24) | (ind << 8);
}
